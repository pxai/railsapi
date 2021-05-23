# Reminders for RoR
![Build Status](https://travis-ci.org/pxai/railsapi.svg?branch=master)

[![CircleCI](https://circleci.com/gh/pxai/railsapi.svg?style=svg)](https://circleci.com/gh/pxai/railsapi)

## General comands
Generate
```shell
rails new app_name
```

run
```shell
rails server
```

Test
```shell
rails test
```
or
```shell
rake test
```

## Generators
Generate controlers. This is about, with about method
```shell
rails generate controller about about
```

Generate models:
```shell
rails generate model Lesson name:string description:text
```

Generate resource:
```shell
rails generate resource entry title:string body:text published:boolean
```

Generate serializers
```shell
rails g serializer category
```

Check routes:
```shell
rails routes
```

Then:
```shell
rake db:migrate
```
for other envs:
```shell
export RAILS_ENV=production
rake db:migrate
```

Populate the Database
```
rake db:seed
```

## Curl commands

```shell
curl http://localhost:3000/courses
```

```shell
curl --header "Content-Type: application/json" \
  --request POST \
  --data '{"title":"xyz","description":"xyz", "published": "false"}' \
  http://localhost:3000/courses
```

```shell
curl -i -X POST -H "Content-Type: application/json" -d  '{"title":"xyz","description":"xyz", "published": "false"}' http://localhost:3000/courses
```

## SQLite
```sql
 insert into courses (title, description, published, created_at, updated_at) values ("aaa", "aaa description" , false, DATE('now'), DATE('now'));
 ```

# README

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
