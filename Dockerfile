FROM ubuntu:16.04

RUN apt-get update
RUN apt-get install -y \
	git \
	netcat \
	lsof \
	mongodb \
	openssl \
	libssl-dev \
	python-dev \
	python-pip \
	python-setuptools \
	libffi6 \
	libffi-dev

RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN pip install --upgrade pip
RUN pip install service_identity helga

ADD entrypoint.sh /usr/local/bin/entrypoint.sh

RUN sed -i -s 's/^bind_ip/#bind_ip/' /etc/mongodb.conf && \
    service mongodb restart

ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
