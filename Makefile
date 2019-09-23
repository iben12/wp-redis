run:
	docker run --rm -it \
	wp-redis bash

build:
	docker build -t wp-redis .