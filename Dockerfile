FROM ubuntu:12.04
MAINTAINER Shay Erlichmen <shay@samba.me>

RUN apt-get update -yqq
# Install pip
RUN DEBIAN_FRONTEND=noninteractive apt-get -yqq --no-install-recommends --force-yes install curl python
RUN curl --silent --show-error --retry 5 https://bootstrap.pypa.io/get-pip.py | python2.7
RUN pip install elasticsearch-curator

ENTRYPOINT  ["/usr/local/bin/curator"]