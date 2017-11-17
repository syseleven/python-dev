NAME=syseleven/python-dev
TAG=2.7

build:
	docker build -t "$(NAME):$(TAG)" .

push: build
	docker push "$(NAME):$(TAG)"
