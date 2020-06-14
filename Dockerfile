FROM nvidia/cuda:10.1-cudnn7-devel-ubuntu18.04
ADD requirements.txt .
RUN apt-get update \
  ; apt-get install -y cmake python3-pip git \
  ; pip3 install torch==1.5.0+cu101 torchvision==0.6.0+cu101 -f https://download.pytorch.org/whl/torch_stable.html \
  && rm -rf /var/lib/apt/lists/*
RUN pip3 install Cython && pip3 install -r requirements.txt \
  && rm -rf ~/.cache/pip/
