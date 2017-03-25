FROM fedora:25

RUN dnf install -y \
	which \
	git

ADD . /build

RUN /build/setup default

ENTRYPOINT ["/build/test.sh"]
