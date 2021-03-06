FROM ptolemy428/docker-troposphere:latest
MAINTAINER Larry Liang <ptolemy428@gmail.com>

RUN apt-get update && apt-get install rsync

RUN pip install --no-cache-dir boto botocore boto3 \
                               ansible

WORKDIR /usr/src/app
