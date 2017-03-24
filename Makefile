dockerTag=alexjpaz.com/workstation

build:
	docker build -t $(dockerTag) .
	docker run $(dockerTag) test
