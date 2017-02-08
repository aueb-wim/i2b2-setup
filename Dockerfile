FROM postgres:9.6.1

MAINTAINER mirco.nasuti@chuv.ch


COPY i2b2_schema.py /
COPY alembic.ini /
COPY db_migrations/ /db_migrations/
COPY migrate.sh /docker-entrypoint-initdb.d/

RUN apt-get update
RUN apt-get install -y 'python3' 'python3-pip' 'postgresql-server-dev-9.6'
RUN pip3 install 'alembic' 'psycopg2'
