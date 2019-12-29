docker volume create pg_data

docker run --name=postgis -d -e POSTGRES_USER=taxi -e POSTGRES_PASS=taxi -e POSTGRES_DBNAME=taxi -e ALLOW_IP_RANGE=0.0.0.0/0 -p 5432:5432 -v pg_data:/var/lib/postgresql --restart=always kartoza/postgis:9.6-2.4

export PGDATABASE=taxi
export PGUSER=taxi
export PGPASSWORD=taxi 