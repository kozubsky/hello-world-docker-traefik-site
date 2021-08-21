#!make

DC=docker-compose -f docker-compose.yml -f docker-compose.override.yml

# start app containers
start:
	$(DC) up -d

# stop app containers
stop:
	$(DC) down

# restart app containers
restart: stop start

# start containers in modal (not daemonized) mode. Is useful for quick debug.
start-modal:
	$(DC) up

# pull application code
pull:
	git -C ./ pull
