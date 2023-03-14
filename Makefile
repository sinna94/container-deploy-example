docker-build:
	docker build -t spring-boot-k8s:latest .
up:
	docker compose up -d
down:
	docker compose down
