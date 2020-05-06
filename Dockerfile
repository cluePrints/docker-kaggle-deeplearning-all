FROM ufoym/deepo:all-py36-jupyter
ADD requirements.txt .
RUN apt-get update \
  ; apt-get install -y python3-tk tk-dev \
  && rm -rf /var/lib/apt/lists/*
RUN pip install -r requirements.txt \
  && rm -rf ~/.cache/pip/
