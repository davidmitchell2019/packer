#!/usr/bin/env bash
sudo apt-get update
sudo apt-get upgrade -y
sudo apt install openjdk-8-jdk -y
sudo apt install bzip2 -y
wget https://www.anaconda.com/download/
curl -O https://repo.anaconda.com/archive/Anaconda3-2019.03-Linux-x86_64.sh
bash Anaconda3-2019.03-Linux-x86_64.sh -b-p ~/anaconda
rm Anaconda3-2019.03-Linux-x86_64.sh
sudo bash ~/anaconda/bin/activate
export PATH=~/anaconda/bin:$PATH
conda update conda -y
conda install -c conda-forge pyspark

###############post installation ###############################
#gcloud compute ssh jupytr-instance
#sudo su cloud-user
#cd /home/cloud-user
#jupyter notebook --generate-config
#VARIABLE="c.NotebookApp.allow_origin = '*'"
#VARIABLE2="c.NotebookApp.ip = '0.0.0.0'"
#echo $VARIABLE | cat - .jupyter/jupyter_notebook_config.py > temp && mv temp .jupyter/jupyter_notebook_config.py
#echo $VARIABLE2 | cat - .jupyter/jupyter_notebook_config.py > temp2 && mv temp2 .jupyter/jupyter_notebook_config.py
#jupyter notebook --no-browser --port 8888