APP_NAME=metrics-api
DOCKER_COMPOSE=docker compose
GO=go 

.PHONY: build run stop logs test clean

setup:
	$(GO) mod tidy
	$(GO) mod download
	make up
	make env

build:
	$(GO) build -o main ./cmd/api

run: 
	$(GO) run ./cmd/api

up: 
	$(DOCKER_COMPOSE) up -d --build

stop: 
	$(DOCKER_COMPOSE) down

logs-api: 
	$(DOCKER_COMPOSE) logs -f api

logs-db: 
	$(DOCKER_COMPOSE) logs -f db

test: 
	$(GO) test ./... -v

clean: 
	rm -f main

env:
	cp --update=none .env.example .env