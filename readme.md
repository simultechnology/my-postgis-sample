# postgis / pgadmin4 sample

## how to start

```bash
docker-compose up -d
```

## how to see pgadmin UI

[http://localhost:5050/](http://localhost:5050/)

![pgadmin](./images/pgadmin4.png)

## how to use psql create a new DB

### connect to psql
```bash
psql -U postgres -p 55432 -h localhost
```

### create a new DB

```postgresql
CREATE DATABASE my_postgis_db;
\connect my_postgis_db
CREATE SCHEMA postgis;
GRANT USAGE ON schema postgis to public;
CREATE EXTENSION postgis SCHEMA postgis;
ALTER DATABASE my_postgis_db SET search_path=public,postgis,contrib;

```