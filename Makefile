.PHONY: build run

all: build run

build:
	sudo docker build --tag bryandollery/devbox:latest .

run:
	sudo docker run -it --rm bryandollery/devbox
