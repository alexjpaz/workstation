dockerTag=alexjpaz.com/workstation

build:
	docker build --build-arg WORKSTATION_USER=datboi -t $(dockerTag) .

test:
	docker run $(dockerTag)
