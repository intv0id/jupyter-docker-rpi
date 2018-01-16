#! /bin/bash

apt install -y \
    octave \
    gnuplot

pip3 install octave_kernel

python3 -m octave_kernel.install