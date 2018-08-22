#!/bin/bash -xe

PKGS="biopython scikit_bio jupyter reportlab pillow"

edm envs create --force bio-tutorial --version 3.6
edm install -e bio-tutorial $PKGS -y

edm run -e bio-tutorial pip install nglview

jupyter-nbextension enable nglview --py --sys-prefix
