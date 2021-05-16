# Reminders for RoR
![Build Status](https://travis-ci.org/pxai/rails-react-fullstack.svg?branch=master)]
(https://travis-ci.org/pxai/rails-react-fullstack)

## General comands
Generate
```
rails new app_name
```

run
```
rails server
```

Test
```
rails test
```

## Generators
Generate controlers. This is about, with about method
```
rails generate controller about about
```

Generate models:
```
rails generate model Lesson name:string description:text
```

Then:
```
rake db:migrate
```
for other envs:
```
export RAILS_ENV=production
rake db:migrate
```

T

# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
