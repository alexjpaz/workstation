FROM fedora:25

RUN dnf install -y \
	which \
	git


ARG WORKSTATION_USER

RUN useradd -m -u 1000 datboi

ADD . /build

RUN /build/setup

ENTRYPOINT ["/build/test.sh"]
