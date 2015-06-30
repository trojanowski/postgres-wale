FROM postgres:9.4

RUN apt-get update &&\
    apt-get install -y curl gcc lzop pv python-dev &&\
    rm -rf /var/lib/apt/lists/* &&\
    curl https://bootstrap.pypa.io/get-pip.py | python &&\
    pip install --no-cache-dir envdir wal-e

