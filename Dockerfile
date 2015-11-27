FROM python:2.7.10
MAINTAINER Larry Liang <ptolemy428@gmail.com>

RUN git clone git://github.com/ansible/ansible.git --recursive
WORKDIR /ansible
RUN . ./hacking/env-setup

RUN pip install paramiko PyYAML Jinja2 httplib2 six

#Set up python
RUN ln -s /usr/local/bin/python /usr/bin/python

ENV PYTHONPATH /ansible/lib
ENV PATH /ansible/bin:$PATH

RUN pip install boto --upgrade

WORKDIR /
