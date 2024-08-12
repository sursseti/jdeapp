.PHONY: build run test clean

# Переменные
PROJECT_ID = 123
PROJECT_NAME = jde_app
DOCKER_COMPOSE = docker-compose -p $(PROJECT_NAME)
DOCKER_COMPOSE_FILE = docker-compose.yml

# Экспорт переменных для использования в docker-compose
export PROJECT_NAME SERVICE_NAME PROJECT_ID

# Сборка Docker образа
build:
	$(DOCKER_COMPOSE) -f $(DOCKER_COMPOSE_FILE) build

# Запуск приложения
run:
	$(DOCKER_COMPOSE) -f $(DOCKER_COMPOSE_FILE) up

# Инициализация: сборка и запуск приложения
init: build run-detached

# Запуск приложения в фоновом режиме
run-detached:
	$(DOCKER_COMPOSE) -f $(DOCKER_COMPOSE_FILE) up -d

# Остановка приложения
stop:
	$(DOCKER_COMPOSE) -f $(DOCKER_COMPOSE_FILE) down

# Запуск тестов
test:
	$(DOCKER_COMPOSE) -f $(DOCKER_COMPOSE_FILE) run --rm app pytest

# Очистка Docker ресурсов
clean:
	$(DOCKER_COMPOSE) -f $(DOCKER_COMPOSE_FILE) down --rmi all --volumes --remove-orphans

# Просмотр логов
logs:
	$(DOCKER_COMPOSE) -f $(DOCKER_COMPOSE_FILE) logs -f

# Вход в контейнер
shell:
	$(DOCKER_COMPOSE) -f $(DOCKER_COMPOSE_FILE) exec app /bin/bash

# Обновление зависимостей
update-deps:
	$(DOCKER_COMPOSE) -f $(DOCKER_COMPOSE_FILE) run --rm app pip install -r requirements.txt --upgrade

# Помощь
help:
	@echo "Доступные команды:"
	@echo "  make init           - Сборка и запуск Docker образа"
	@echo "  make build          - Сборка Docker образа"
	@echo "  make run            - Запуск приложения"
	@echo "  make run-detached   - Запуск приложения в фоновом режиме"
	@echo "  make stop           - Остановка приложения"
	@echo "  make test           - Запуск тестов"
	@echo "  make clean          - Очистка Docker ресурсов"
	@echo "  make logs           - Просмотр логов"
	@echo "  make shell          - Вход в контейнер"
	@echo "  make update-deps    - Обновление зависимостей"
