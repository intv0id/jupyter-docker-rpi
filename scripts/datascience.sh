apt install -y \
    python3-scipy \
    python3-numpy \
    python3-matplotlib \
    python3-pandas \
    python3-seaborn \
    python-sklearn

pip3 install ipyparallel

ipcluster nbextension enable
    