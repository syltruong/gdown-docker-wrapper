IMAGE_NAME = gdown-image

# Build the Docker image
.PHONY: build
build:
	@echo "------------------------------------------------------------------------------------------";
	@echo "Building docker image"
	docker build \
		--build-arg USER=$(USER) \
        --build-arg UID=$(shell id -u) \
		--build-arg GID=$(shell id -g) \
		-t $(IMAGE_NAME) \
		.
	@echo "------------------------------------------------------------------------------------------";


# example usage: `make download URL="https://drive.google.com/u/1/uc?id=17-FCstm8Fz3bDzFgTmOWHa_c39lTR_1P"`
.PHONY: download
download:
	mkdir -p data
	docker run \
    	-v $(PWD)/data:/home/${USER}/data \
    	-u $(shell id -u):$(shell id -g) \
		$(IMAGE_NAME) \
    	bash -c "cd /home/${USER}/data && gdown $(URL)"
	