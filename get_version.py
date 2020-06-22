import re
import requests

result = requests.get('https://pypi.org/project/figgy-cli/#files')

if result.status_code != 200:
    raise ValueError("Invalid status code returned from PYPI, cannot lookup latest version.")

data = result.text
tar_match = re.search(r'.*href=\"(https://files.pythonhosted.org/.*figgy-cli-[0-9]+\.[0-9]+\.[0-9]+\w*\.tar\.gz)\".*',
                      data, re.MULTILINE)
download_url = tar_match.group(1)

version_match = re.search(r'.*figgy-cli-([0-9]+\.[0-9]+\.[0-9]+\w*)\.tar\.gz', download_url)
pypi_version = version_match.group(1)


# Remove suffix integer.
print(pypi_version)
