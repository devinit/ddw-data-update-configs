#!/bin/bash

# comment out below line if running outside of docker container
cd /src

Rscript data_updates/R/fts.R $FTSUSER $FTSPASS
python3 manage.py update_meta fts
