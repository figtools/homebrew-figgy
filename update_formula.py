import re
import requests
from template import BREW_TEMPLATE

# Release homebrew version if new version is found on PYPI.

# Parse current figgy version.
with open('Formula/figgy.rb') as file:
    content = file.read()
    match = re.search(r'.*url.*figgy-cli-([0.9]+.[0-9]+\w*)\.tar.gz', content, re.MULTILINE)
    current_version = match.group(1)

print(f"Found current version: {current_version}")
result = requests.get('https://pypi.org/project/figgy-cli/#files')

if result.status_code != 200:
    raise ValueError("Invalid status code returned from PYPI, cannot lookup latest version.")


data = result.text
tar_match = re.search(r'.*href=\"(https://files.pythonhosted.org/.*figgy-cli-[0-9]+\.[0-9]+\.[0-9]+\w*\.tar\.gz)\".*', data, re.MULTILINE)
download_url = tar_match.group(1)

sha_match = re.search(r'.*SHA256<.th>\s*<td>\s*<code>(\w+)</code>.*', data, re.MULTILINE)
sha = sha_match.group(1)

version_match = re.search(r'.*release__version\">\s*([0-9]+\.[0-9]+\.[0-9]+\w*)\s+<span.*', data, re.MULTILINE)
pypi_version = version_match.group(1)

print(f"PYPI Url: {download_url}")
print(f"PYPI SHA: {sha}")
print(f"PYPI Version: {pypi_version}")

if pypi_version != current_version:
    print("Updating figgy.rb to latest version")
    contents = BREW_TEMPLATE.replace('%%URL%%', download_url).replace('%%SHA%%', sha)

    with open('Formula/figgy.rb', 'w') as file:
        file.write(contents)

else:
    print("Homebrew version is the same as latest version for figgy. Not updating.")