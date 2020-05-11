FROM nvidia/cuda:10.1-cudnn7-devel-ubuntu18.04
ADD requirements.txt .
RUN apt-get update \
  ; apt-get install -y cmake python3-pip \
  && rm -rf /var/lib/apt/lists/*
RUN pip3 install Cython && pip3 install -r requirements.txt \
  && rm -rf ~/.cache/pip/
