# ScubaBooker App

A copy of the blog created in [Rails getting
started](https://guides.rubyonrails.org/getting_started.html#creating-the-blog-application)

This is a reference application.

The blog post can be found here:

[https://paramagicdev.github.io/my-blog/rails/getting-started-with-rails-6/](https://paramagicdev.github.io/my-blog/rails/getting-started-with-rails-6/)

And the deployed application can be found here:

[https://getting-started-with-rails-6.herokuapp.com/](https://getting-started-with-rails-6.herokuapp.com/)

## Prerequisites

- Docker
- Docker Compose

```bash
docker -v
# Docker version 19.03.6

docker-compose -v
# docker-compose version 1.25.0
```

## Getting started

Make sure you set appropriate environment values in the `docker-compose.yml` file.
If you are on Mac or Windows, do not worry about `USER_ID` & `GROUP_ID`
variables

### Building the Docker container

```bash
docker-compose build
```

Alternatively:

```bash
docker-compose up --build
```

### Creating the database

```bash
docker-compose run --rm web rails db:create
```

### Running migrations

```bash
docker-compose run --rm web rails db:migrate
```

### Starting the server

```bash
docker-compose up
docker-compose up --build
```

### Making changes

```bash
docker-compose run --rm web bundle add <gemname>
docker-compose down
docker-compose up --build
```

### Running rails commands

```bash
docker-compose run --rm web rails [command]

# Alternatively, open a bash instance and run normally
docker-compose run --rm web /bin/bash
rails [command]
```

### Yarn integrity issues

```bash
docker-compose run --rm web yarn install --check-files
```

### Deployment

```bash
heroku login
heroku apps:create <app-name>
git push heroku master
heroku run rails db:migrate
```

Make sure you have the following ENV variables set:

```bash
# Authentication name & password to add / delete comments and articles
ADMIN_NAME="<Name>"
ADMIN_PASSWORD="<Password>"
```
