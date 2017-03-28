dockerTag=alexjpaz.com/workstation

build:
	docker build --build-arg WORKSTATION_USER=datboi -t $(dockerTag) .

test: build
	docker run $(dockerTag)
