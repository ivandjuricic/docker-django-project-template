# {{ project_name }}

## This is a template for new project when using django-admin command

Example of usage:

`django-admin startproject MYNEWPROJECT --template=https://github.com/ivandjuricic/docker-django-project-template/archive/master.zip --extension=py,md,ini,yml --name=Dockerfile,.env`

The command above will create new project under provided path (if no path provided directory will be create with the project name).

Simple

`docker-compose up` or `make runserver` will run the server. 

Alternatively, Makefile is added to templates with provided commands:
* `runserver`
* `migrations`
* `migrate`
* `createsuperuser`
* `createuser`
* `static` - collectstatic management command
* `translate` - compilemessages management command
* `shell`
* `test`
* `teardown`
