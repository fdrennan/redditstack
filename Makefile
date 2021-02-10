run:
	docker-compose down
	docker-compose pull
	docker-compose build
	docker-compose up -d

init:
	echo Building required file structure
	docker-compose down
	docker-compose pull
	docker-compose up -d

stop:
	docker-compose down

log:
	docker-compose logs -f

clear:
	rm -rf logs dags plugins
	mkdir -m 777 logs dags plugins

update: clear
	rm -rf logs/*
	git add --all
	git commit -m 'update'
