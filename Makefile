.PHONY: build run

all: build run

build:
	sudo docker build --tag bryandollery/devbox:latest .

run:
	sudo docker run -it --rm --name devbox \
        --network host \
        --hostname devbox \
	-v /var/run/docker.sock:/var/run/docker.sock \
	bryandollery/devbox
