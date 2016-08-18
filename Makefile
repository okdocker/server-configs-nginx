NAME ?= nginx-example
DOCKER_NAMESPACE ?= rdorgueil
DOCKER_IMAGE ?= $(DOCKER_NAMESPACE)/$(NAME)
DOCKER_RUN_OPTIONS ?= 
DOCKER_RUN_COMMAND ?= 
VERSION ?= $(shell git describe)
STAGE ?= preprod

.PHONY: push release run bash

release:
	docker build --no-cache -t $(DOCKER_IMAGE):$(VERSION) .

push:
	docker push $(DOCKER_IMAGE):$(VERSION)

run:
	docker run -it -p 80:80 -p 443:443 $(DOCKER_RUN_OPTIONS) --rm $(DOCKER_IMAGE):$(VERSION) $(DOCKER_RUN_COMMAND)

