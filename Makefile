create-api:
	docker compose run api sh

start-api:
	docker compose up api --build

create-frontend:
	docker compose run frontend sh
start-frontend:
	docker compose up frontend --build

postgres:
	docker compose run pgsql