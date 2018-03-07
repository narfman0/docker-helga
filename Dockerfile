FROM ubuntu:16.04

RUN apt update
RUN apt install -y \
	git \
	mongodb \
	openssl \
	libssl-dev \
	python-dev \
	python-pip \
	python-setuptools \
	libffi6 \
	libffi-dev

RUN pip install --upgrade pip
RUN pip install service_identity helga

ENTRYPOINT ["/usr/local/bin/helga"]
