.PHONY: start stop restart status sync

include .env

REMOTE_HOST=$(SYNC_HOST)
SYNC_PATH?=adsb

sync:
	@test -z $(REMOTE_HOST) && echo "Please set SYNC_HOST in .env file" && exit 1 || true
	@echo "Syncing files to remote server..."
	@rsync -rvz ./ $(REMOTE_HOST):$(SYNC_PATH)

start:
	@echo "Starting adsb..."
	docker compose up -d

stop:
	@echo "Stopping adsb..."
	docker compose down

restart: stop start

status:
	@echo "Status of adsb containers..."
	docker compose ps
