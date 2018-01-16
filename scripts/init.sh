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
    ghostscript

apt install -y \
    python3 \
    python3-dev \
    python3-pip \
    python3-setuptools \
    python3-tk

pip3 install --upgrade pip

pip3 install \
    ipykernel \
    beautifulsoup4 \
    jupyter

python3 -m ipykernel.kernelspec

ipython profile create default

# Create workingdir
mkdir /notebooks