#! /bin/bash

## APT stuff
##################

apt update && apt upgrade -y
apt install -y \
    apt-utils \
    vim \
    wget \
    git \
    libhdf5-dev \
    liblapack-dev \
    gfortran \
    libfreetype6-dev \
    libpng12-dev \
    build-essential \
    libatlas-dev \
    libatlas3gf-base \
    octave \
    gnuplot \
    ghostscript

apt install -y \
    python3 \
    python3-dev \
    python3-pip \
    python3-numpy \
    python3-scipy \
    python3-matplotlib \
    python3-pandas \
    python3-seaborn \
    python3-setuptools \
    python3-tk


## PIP stuff
#################################

pip3 install --upgrade pip

# Data-science (quite heavy)
pip3 install scikit-learn \
    ipykernel \
    jupyter

# Other stuff
pip3 install beautifulsoup4 \
    ipyparallel \
    octave_kernel


# Kernel install

python3 -m ipykernel.kernelspec
python3 -m octave_kernel.install
ipython profile create default

## Conf
#########################

# Clusters
ipcluster nbextension enable

# Create workingdir
mkdir /notebooks