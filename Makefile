NAME ?= nginx-example
DOCKER_NAMESPACE ?= rdorgueil
DOCKER_IMAGE ?= $(DOCKER_NAMESPACE)/$(NAME)
DOCKER_RUN_OPTIONS ?= 
DOCKER_RUN_COMMAND ?= 
VERSION ?= $(shell git describe)

.PHONY: push build run

run: build
	docker run -it -p 80:80 -p 443:443 $(DOCKER_RUN_OPTIONS) --rm $(DOCKER_IMAGE):$(VERSION) $(DOCKER_RUN_COMMAND)

push: build
	docker push $(DOCKER_IMAGE):$(VERSION)

build:
	docker build -t $(DOCKER_IMAGE):$(VERSION) .

