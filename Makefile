.ONESHELL:
SHELL=/bin/bash

run_services:
	echo "Running services"
	docker-compose up -d

stop_services:
	echo "Stopping services"
	docker-compose down

stop_and_clean_services:
	echo "Stopping and cleaning all services"
	docker-compose down -v --rmi all
