NAME=syseleven/python-dev
TAG=latest

build:
	docker build -t "$(NAME):$(TAG)" .

push: build
	docker push "$(NAME):$(TAG)"
