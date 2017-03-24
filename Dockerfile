FROM fedora:25

RUN dnf install -y \
	which

ADD . /build

RUN /build/init default

ENTRYPOINT ["/build/test.sh"]
