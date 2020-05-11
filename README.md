

    export VERSION=0.0.3; gradient jobs create --machineType P4000 --buildOnly --projectId prpw22h7u --workspace . --useDockerfile true --registryTarget soboleiv/kaggle-deeplearning-all:$VERSION --registryTargetUsername soboleiv --registryTargetPassword $password


https://github.com/NVIDIA/nvidia-docker/wiki/CUDA#requirements
https://gitlab.com/nvidia/container-images/cuda/blob/master/doc/supported-tags.md
