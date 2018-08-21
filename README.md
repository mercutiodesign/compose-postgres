# requirements:
* [docker](https://docs.docker.com/engine/installation/) installed
* [docker-compose](https://docs.docker.com/compose/install/) installed

# setup

## steps
1. `git clone https://github.com/mercutiodesign/compose-postgres.git`
2. `cd compose-postgres`
3. `docker-compose up`

## result
* postgres running on 5432
  * user: `postgres`
  * password: `password`
* [pgadmin4 running on 80](http://localhost/)
  * user: `postgres`
  * password: `password`

# configuration

## local connection

Use hostname `postgres` for a local connection configured in pgadmin4

## postgres data

By default this composition expects path `~/data/postgres` to be mapped to `/data/postgres` (container).

In order to change this on a MacOS properly, follow the [Docker for Mac :: File system sharing (osxfs) docs](https://docs.docker.com/docker-for-mac/osxfs/#namespaces).


# tools

## restore

use the `restore_db.sh` script with a dump as an argument to restore a database into the dockerized postgresql server.
