import re
import os
from utils import *
from template import BREW_TEMPLATE

architectures = ['catalina', 'mojave', 'high_sierra', 'big_sur']
BOTTLE_VERSION = 1

# Release homebrew version if new version is found on PYPI.
# Parse current figgy version.
with open('Formula/figgy.rb') as file:
    content = file.read()
    match = re.search(r'.*releases/cli/(.*)/darwin/.*', content, re.MULTILINE)
    current_version = match.group(1)

content = content.replace('class Figgy', f'class FiggyAT{current_version.replace(".", "")}')
[copy_versioned_objects(current_version, arc, BOTTLE_VERSION) for arc in architectures]

with open(f'Formula/figgy@{current_version}.rb', 'w+') as file:
    file.write(content)

print(f"Found current version: {current_version}")
result = requests.get('https://pypi.org/project/figgy-cli/#files')

if result.status_code != 200:
    raise ValueError("Invalid status code returned from PYPI, cannot lookup latest version.")

data = result.text
tar_match = re.search(r'.*href=\"(https://files.pythonhosted.org/.*figgy-cli-[0-9]+\.[0-9]+\.[0-9]+\w*\.tar\.gz)\".*',
                      data, re.MULTILINE)
download_url = tar_match.group(1)

version_match = re.search(r'.*figgy-cli-([0-9]+\.[0-9]+\.[0-9]+\w*)\.tar\.gz', download_url)
pypi_version = version_match.group(1)

print(f"PYPI Url: {download_url}")
print(f"PYPI Version: {pypi_version}")

if re.match(r'^[0-9]+\.[0-9]+\.[0-9]+[a-zA-z]0$', pypi_version):
    version = pypi_version.rstrip('01234567890')
else:
    version = pypi_version

if version != current_version:
    download_url = f"https://www.figgy.dev/releases/cli/{version}/darwin/figgy.tar.gz"
    dest = '/tmp/figgy.tar.gz'

    print(f"Downloading URL: {download_url}")
    download_file(download_url, dest)
    sha256 = get_hash(dest)
    print(f'Got SHA256 for {dest}: {sha256}')

    for arch in architectures:
        create_bottle(version, arch, BOTTLE_VERSION)

    print(f"Updating figgy.rb to latest version: {version} with url: {download_url}")
    contents = BREW_TEMPLATE \
        .replace('%%URL%%', download_url) \
        .replace('%%SHA%%', sha256) \
        .replace('%%BOTTLE_VERSION%%', str(BOTTLE_VERSION))

    with open('Formula/figgy.rb', 'w+') as file:
        file.write(contents)
else:
    print("Homebrew version is the same as latest version for figgy. Not updating.")
