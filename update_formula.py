import re
from utils import *
from template import BREW_TEMPLATE

architectures = ['catalina', 'mojave', 'high_sierra']
BOTTLE_VERSION = 1

# Release homebrew version if new version is found on PYPI.
# Parse current figgy version.
with open('Formula/figgy.rb') as file:
    content = file.read()
    match = re.search(r'.*releases/cli/(.*)/darwin/.*', content, re.MULTILINE)
    current_version = match.group(1)

print(f"Found current version: {current_version}")
result = requests.get('https://pypi.org/project/figgy-cli/#files')

if result.status_code != 200:
    raise ValueError("Invalid status code returned from PYPI, cannot lookup latest version.")

data = result.text
tar_match = re.search(r'.*href=\"(https://files.pythonhosted.org/.*figgy-cli-[0-9]+\.[0-9]+\.[0-9]+\w*\.tar\.gz)\".*',
                      data, re.MULTILINE)
download_url = tar_match.group(1)

sha_match = re.search(r'.*SHA256<.th>\s*<td>\s*<code>(\w+)</code>.*', data, re.DOTALL)
sha = sha_match.group(1)

version_match = re.search(r'.*release__version\">\s*([0-9]+\.[0-9]+\.[0-9]+\w*)\s+<span.*', data, re.MULTILINE)
pypi_version = version_match.group(1)

print(f"PYPI Url: {download_url}")
print(f"PYPI SHA: {sha}")
print(f"PYPI Version: {pypi_version}")

if re.match(r'^[0-9]+\.[0-9]+\.[0-9]+[a-zA-z]0$', pypi_version):
    version = pypi_version.rstrip('01234567890')
else:
    version = pypi_version

url = f"https://www.figgy.dev/releases/cli/{version}/darwin/figgy.tar.gz"
dest = '/tmp/figgy.tar.gz'

print(f"Downloading URL: {url}")
download_file(url, dest)
sha256 = get_hash(dest)

print(f'Got SHA256 for {dest}: {sha256}')

for arch in architectures:
    create_bottle(version, arch, BOTTLE_VERSION)

download_url = f"https://www.figgy.dev/releases/cli/{version}/darwin/figgy.tar.gz"
# if pypi_version != current_version:
print(f"Updating figgy.rb to latest version: {version} with url: {download_url}")
contents = BREW_TEMPLATE\
    .replace('%%URL%%', download_url)\
    .replace('%%SHA%%', sha)\
    .replace('%%BOTTLE_VERSION%%', str(BOTTLE_VERSION))

with open('Formula/figgy.rb', 'w+') as file:
    file.write(contents)
#
# else:
#     print("Homebrew version is the same as latest version for figgy. Not updating.")
