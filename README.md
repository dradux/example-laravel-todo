# Example Rails Todo App

This is an example todo app. The app was built as an example/reference application, primarily for use with freelunchci.

This app is dockerized and will be kubernetized and freelunchized ;-)


## Notices
* this app is not intended to be a production ready app or the base for a production app, its purpose is for example/demonstration usage only.
* please see the docs directory for more documentation / information.


## Prerequisites
* docker
* docker-compose


## Setup
* `docker-compose build`


## Run
* `docker-compose up`
* initialize the database: `docker-compose run web php artisan migrate`


## View
* go to: `http://localhost:3000`


## Stop App
* `Ctrl+C` if app is launched interactively or use `docker-componse kill` if launched as daemon (`-d`)


## FLCI Testing
* if you would like to change something in the app to cause a flci build you can update the app's version (resources/views/layouts/app.blade.php > appver).


## Tests
* not yet implemented


## Attribution
* this app came, in large part, from [laravel's quickstart-basic](https://laravel.com/docs/5.1/quickstart)


## Resources
* [basic task list - laravel](https://laravel.com/docs/5.1/quickstart)
* [creating a basic todo application in laravel 5 - part 1](https://www.flynsarmy.com/2015/02/creating-a-basic-todo-application-in-laravel-5-part-1/)


## Developer

### Typical Development
* start db: `docker-compose up -d db`

