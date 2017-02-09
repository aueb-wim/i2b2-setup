FROM postgres:9.6.1

MAINTAINER mirco.nasuti@chuv.ch


COPY i2b2_schema.py /
COPY alembic.ini /
COPY db_migrations/ /db_migrations/
COPY migrate.sh /docker-entrypoint-initdb.d/

RUN apt-get update && \
apt-get install -y --no-install-recommends \
'python3' 'python3-dev' 'python3-pip' 'build-essential' 'postgresql-server-dev-9.6' && \
rm -rf /var/lib/apt/lists/*
RUN pip3 install 'alembic' 'psycopg2'
