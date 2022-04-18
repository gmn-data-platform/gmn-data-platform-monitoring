.ONESHELL:
SHELL=/bin/bash

build_all_services:
	echo "Building services"
	docker-compose build

run_all_services:
	echo "Running services"
	docker-compose up -d

stop_all_services:
	echo "Stopping services"
	docker-compose down --remove-orphans

stop_and_all_clean_services:
	echo "Stopping and cleaning all services"
	docker-compose down -v --rmi all
