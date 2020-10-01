# README
This is an WEB APP that uses Ruby on Rails 6 and PostgreSQL as the database.

## Requirements

In order to install and run the project locally you need to have the following installed:

* [Ruby 2.7.1](https://www.ruby-lang.org/es/downloads/)
* [PostgreSQL](https://www.postgresql.org/)

## Setup

Download the project by cloning it from Git:

```
$ git clone git@github.com:mejialvarez/surveys-app.git
```

Install the dependencies with:

```
$ bundle
```

Create the database and run the migrations by executing:

```
$ rails db:create
$ rails db:migrate
```

You can seed the database running:

```
$ rails db:seed
```
This command will create one binary tree. Check the file [seeds.rb](db/seeds.rb) for more information.