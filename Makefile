NAME=syseleven/python-dev
TAG=2.7.6

build:
	docker build -t "$(NAME):$(TAG)" .

push: build
	docker push "$(NAME):$(TAG)"
