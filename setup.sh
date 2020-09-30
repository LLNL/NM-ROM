#!/bin/bash

python3 -m venv nm-rom
source nm-rom/bin/activate
pip install --upgrade pip
pip install -r requirements.txt
python -m ipykernel install --user --name nm-rom --display-name "NM-ROM"
