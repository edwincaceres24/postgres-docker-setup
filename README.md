# Docker template for run Postgres and PgAdmin

* This is a template for running Postgres and PgAdmin containers with Docker.


## Setup project

* Run the following command on main folder:

```
docker compose up
```


## Run Movies tables

* Make sure to make this change in Dockerfile

```
- COPY setup.sql /docker-entrypoint-initdb.d/
+ COPY movies.sql /docker-entrypoint-initdb.d/
```

* To erase cache on docker volume run this command:

```
docker compose build --no-cache
```

## Starting PGADMIN

*  Go to http://localhost:5432
