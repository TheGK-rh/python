up:
	cd docker && docker compose up -d
arm-up:
	cd docker && docker compose --file docker-compose.arm.yml up -d
build:
	cd docker && docker compose build --no-cache --force-rm
arm-build:
	cd docker && docker compose --file docker-compose.arm.yml build --no-cache --force-rm
python:
	cd docker && docker compose exec python bash
arm-python:
	cd docker && docker compose --file docker-compose.arm.yml exec python bash
down:
	cd docker && docker compose down --remove-orphans
arm-down:
	cd docker && docker compose --file docker-compose.arm.yml down --remove-orphans
arm-destroy:
	cd docker && docker compose --file docker-compose.arm.yml down --rmi all --remove-orphans
ps:
	cd docker && docker compose ps
version:
	cd docker && docker compose exec python python --version
list:
	cd docker && docker compose exec python pip list
exec:
	cd docker && docker compose exec python python main.py
arm-exec:
	cd docker && docker compose --file docker-compose.arm.yml exec python python main.py
init:
	@make build
	@make up
	@make exec
arm-init:
	@make arm-build
	@make arm-up
	@make arm-exec