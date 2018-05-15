TAG=latest

all: build_all push_all

build_all: build_x86_64 build_i686

push_all: push_x86_64 push_i686

push_x86_64:
	docker push pushamp/manylinux-openssl-x86_64:$(TAG)

push_i686:
	docker push pushamp/manylinux-openssl-i686:$(TAG)

build_x86_64:
	docker build --no-cache --tag pushamp/manylinux-openssl-x86_64:$(TAG) -f Dockerfile-x86_64 .

build_i686:
	docker build --no-cache --tag pushamp/manylinux-openssl-i686:$(TAG) -f Dockerfile-i686 .
