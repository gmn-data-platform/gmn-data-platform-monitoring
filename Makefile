.ONESHELL:
SHELL=/bin/bash

run_services:
	echo "Running services"
	docker-compose -p gmn_data_platform_monitoring up -d
	docker-compose ps

stop_services:
	echo "Stopping services"
	docker-compose -p gmn_data_platform_monitoring down
	docker-compose ps

stop_and_clean_services:
	echo "Stopping and cleaning all services"
	docker-compose -p gmn_data_platform_monitoring down -v --rmi all
