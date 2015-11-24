FROM python:2.7.10
MAINTAINER Larry Liang <ptolemy428@gmail.com>

RUN git clone git://github.com/ansible/ansible.git --recursive
WORKDIR /ansible
RUN . ./hacking/env-setup

RUN pip install paramiko PyYAML Jinja2 httplib2 six

#Set up python
RUN ln -s /usr/local/bin/python /usr/bin/python

#Install ansible-dk
WORKDIR /
RUN wget https://bintray.com/artifact/download/omniti-labs/ansible-dk/ansible-dk_0.1.0-1_amd64.deb
RUN dpkg -i /ansible-dk_0.1.0-1_amd64.deb

ENV PYTHONPATH /ansible/lib
ENV PATH /ansible/bin:$PATH

WORKDIR /
