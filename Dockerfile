FROM python:2.7.10
MAINTAINER Larry Liang <ptolemy428@gmail.com>

RUN git clone git://github.com/ansible/ansible.git --recursive
WORKDIR /ansible
RUN . ./hacking/env-setup

RUN pip install paramiko PyYAML Jinja2 httplib2 six

ENV PYTHONPATH /ansible/lib
ENV PATH /ansible/bin:$PATH
    
WORKDIR /
