FROM ptolemy428/docker-troposphere:latest
MAINTAINER Larry Liang <ptolemy428@gmail.com>

RUN apt-get update && apt-get install rsync

RUN pip install --no-cache-dir boto \
                               ansible==2.2.0.0

WORKDIR /usr/src/app
