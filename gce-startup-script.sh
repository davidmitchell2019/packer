#!/usr/bin/env bash
jupyter notebook --generate-config
VARIABLE="c.NotebookApp.allow_origin = '*'"
VARIABLE2="c.NotebookApp.ip = '0.0.0.0'"
echo $VARIABLE | cat - .jupyter/jupyter_notebook_config.py > temp && mv temp .jupyter/jupyter_notebook_config.py
echo $VARIABLE2 | cat - .jupyter/jupyter_notebook_config.py > temp2 && mv temp2 .jupyter/jupyter_notebook_config.py
jupyter notebook --no-browser --port 8888 --NotebookApp.token='' --NotebookApp.password=''
eche 'push9'