FROM fedora:25

RUN dnf install -y \
	which \ 
	git


ARG WORKSTATION_USER

RUN useradd -m -u 1000 datboi

RUN dnf install -y ansible
ADD . /build


WORKDIR /build
RUN bootstrap/fedora

ENTRYPOINT ["/build/test.py"]
