runserver:
	docker-compose up

migrations:
	docker-compose run web python manage.py makemigrations

migrate:
	docker-compose run web python manage.py migrate

createsuperuser:
	docker-compose run web python manage.py createsuperuser

createuser:
	docker-compose run web python manage.py createuser

static:
	docker-compose run web python manage.py collectstatic --no-input

translate:
	docker-compose run web python manage.py compilemessages

shell:
	docker-compose run web python manage.py shell

test:
	docker-compose run web pytest

docker-production:
	docker build . -t production
	docker run -it --mount type=bind,src="$(shell pwd)",dst=/app production:latest python manage.py compilemessages
	docker run -it --mount type=bind,src="$(shell pwd)",dst=/app production:latest python manage.py collectstatic --no-input
	docker run -p 8000:8000 production

down:
	docker-compose down

teardown:
	docker-compose down --remove-orphans --volumes
	docker-compose kill
	docker-compose rm -f -v