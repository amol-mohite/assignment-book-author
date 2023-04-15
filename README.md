# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

## Setup

Setup procedure of development environment.
Run `cp env.example .env` and open `.env` file to edit environment variables.


### Local environment

Install dependencies

````bash
## Install gems
bundle install
Start PG and setup database
````
```bash
bin/rake db:create db:migrate db:seed
````

Start the app

```bash
## API server
bin/rails s
```

Start console

```bash
bin/rails c
```

