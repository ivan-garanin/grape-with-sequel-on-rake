# grape-with-sequel-on-rake
simple base for starting your lightweight grape application

## Getting starting

clone this repo

create `database.yml` file in db folder(you could user database.yml.sample file as example or delete it)

### create database, im using postgres and could do it by command `sudo -su createdb my-db-name`, if you are using another db change gemfile, configs and everything))

## Migrate
add migrations to db/migrations folder in sequel way `***_yourmigration.rb`
and run
`rake db:migrate`

## Starting project

to start project use `rackup`

## check [Swagger UI](https://github.com/swagger-api/swagger-ui) to explore your api