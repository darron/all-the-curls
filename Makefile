CONTAINER_NAME ?= darron/all-the-curls

all: docker

docker: ## Build Docker image
	docker buildx build . --platform linux/amd64,linux/arm64 -t $(CONTAINER_NAME) --push