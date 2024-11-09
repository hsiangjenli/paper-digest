import jinja2
from jinja2 import Template
import pandas as pd

with open('source/resource/keyterm/template.rst') as f:
    rst_template = Template(f.read())

keyterms = pd.read_csv('source/resource/keyterm/key.csv')
keyterms.sort_values(by='Abbreviation', inplace=True)

print(keyterms.to_dict(orient='records'))

with open('source/resource/keyterm/key.rst', 'w') as f:
    f.write(rst_template.render(keyterms=keyterms.to_dict(orient='records')))