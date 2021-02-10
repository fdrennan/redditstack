run:
	docker-compose down
	docker-compose pull
	docker-compose build
	docker-compose up -d

init:
	echo Building required file structure
	rm -rf logs dags plugins
	mkdir -m 777 logs dags plugins
	docker-compose down
	docker-compose pull
	docker-compose up -d

stop:
	docker-compose down

log:
	docker-compose logs -f

clear:
	rm -rf logs/*

update:
	git add --all
	git commit -m 'update'
	git push origin
