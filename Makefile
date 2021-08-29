up:
	docker compose up -d
build:
	docker compose build --no-cache --force-rm
python:
	docker compose exec python ash
down:
	docker compose down --remove-orphans
destroy:
	docker compose down --rmi all --remove-orphans
init:
	@make build
	@make up
ps:
	docker compose ps
version:
	docker exec -it python python --version
list:
	docker exec -it python pip list
exec:
	docker exec -it python python sample.py