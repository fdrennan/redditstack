up: down pull build
	docker-compose up -d

down:
	docker-compose down

pull:
	docker-compose pull

build:
	docker-compose build

log:
	docker-compose logs -f

init: down clear
	docker-compose pull
	docker-compose build
	docker-compose up -d

clear:
	rm -rf logs dags plugins
	mkdir -m 777 logs dags plugins

mainpush: clear
	git add --all
	git commit -m 'update'
	git push origin main

mainpull:
	git reset --hard
	git pull origin main

stopall:
	docker stop $(docker ps -aq)

removeall:
	docker rm $(docker ps -aq)

removeimages:
	docker rmi $(docker images -q)

scheduler:
	docker exec -it redditstack_airflow-scheduler_1 bash
