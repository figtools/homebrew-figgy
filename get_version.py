import re
import requests

result = requests.get('https://pypi.org/project/figgy-cli/#files')
if result.status_code != 200:
    raise ValueError("Invalid status code returned from PYPI, cannot lookup latest version.")

data = result.text
version_match = re.search(r'.*release__version\">\s*([0-9]+\.[0-9]+\.[0-9]+\w*)\s+<span.*', data, re.MULTILINE)
pypi_version = version_match.group(1)

# print(pypi_version)

# Remove suffix integer.
figgy_version = pypi_version.rstrip('0123456789')
print(figgy_version)