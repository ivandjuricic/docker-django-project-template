PROJECT_DIR = {{ project_name }}

startapp:
	@docker-compose run app python manage.py startapp $(filter-out $@,$(MAKECMDGOALS))

%:
    @:

runserver:
	docker-compose run app python manage.py runserver

migrations:
	docker-compose run app python manage.py makemigrations

migrate:
	docker-compose run app python manage.py migrate

createsuperuser:
	docker-compose run app python manage.py createsuperuser

createuser:
	docker-compose run app python manage.py createuser

shell:
	docker-compose run app python manage.py shell

test:
	docker-compose run app pytest

teardown:
    docker-compose down -v
	docker-compose kill
	docker-compose rm -f -v