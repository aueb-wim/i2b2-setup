#!/usr/bin/env bash

# Start DB container
echo "Starting container..."
db_docker_id=$(docker run -d hbpmip/i2b2-db)

# Query database
echo "Waiting for the DB to be ready..."
sleep 5
out=$(docker exec -ti ${db_docker_id} bash -c "psql -U postgres -c \"\dt\" | grep alembic_version")
ret=${#out}

# Remove DB container
echo "Removing DB container..."
docker kill ${db_docker_id}
docker rm -f ${db_docker_id}

if [ $ret -eq 48 ]
then
  exit 0
else
  exit 1
fi
