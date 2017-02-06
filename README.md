[![CircleCI](https://circleci.com/gh/LREN-CHUV/i2b2-db.svg?style=svg)](https://circleci.com/gh/LREN-CHUV/i2b2-db)
[![Codacy Badge](https://api.codacy.com/project/badge/Grade/b26a4201f7704c54a1aefbd823cf37ab)](https://www.codacy.com/app/mirco-nasuti/i2b2-db?utm_source=github.com&amp;utm_medium=referral&amp;utm_content=LREN-CHUV/i2b2-db&amp;utm_campaign=Badge_Grade)
[![License](https://img.shields.io/badge/license-Apache--2.0-blue.svg)](https://github.com/LREN-CHUV/i2b2-db/blob/master/LICENSE)

# I2B2 DB

## Introduction

This is an implementation of the I2B2 star schema using Python, Alembic, Psycopg2 and PostgreSQL.
The goal of this project is to be able to easily use the I2B2 DB in a Python environement and
to make it easy to create schema migrations.

## Prerequisites

* Python 3.5
* Psycopg
* Alembic
* A running instance of PostgreSQL on localhost:5432

## Create/Migrate tables

Run `alembic upgrade head`.

## Test

Open the tests directory and run `./test.sh`.

NOTE: This will launch a Docker container with a Postgres instance on the port 5432. On CircleCI,
it does not launch a Docker container but connects to a local Postgres instance. If you don't want to
use Docker, you can define this environment variable: `CIRCLE_CI=True`
