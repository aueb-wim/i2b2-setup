[![CircleCI](https://circleci.com/gh/LREN-CHUV/i2b2-setup.svg?style=svg)](https://circleci.com/gh/LREN-CHUV/i2b2-setup)
[![Codacy Badge](https://api.codacy.com/project/badge/Grade/b26a4201f7704c54a1aefbd823cf37ab)](https://www.codacy.com/app/mirco-nasuti/i2b2-setup?utm_source=github.com&amp;utm_medium=referral&amp;utm_content=LREN-CHUV/i2b2-setup&amp;utm_campaign=Badge_Grade)
[![License](https://img.shields.io/badge/license-Apache--2.0-blue.svg)](https://github.com/LREN-CHUV/i2b2-setup/blob/master/LICENSE)

# I2B2 SETUP

## Introduction

The goal of this project is to provoide a Docker container including Alembic and a Python model of the I2B2 schema.

## Usage

Example: 
`docker run --rm -e "DB_URL=postgresql://postgres:postgres@localhost:5432/postgres" hbpmip/i2b2-setup upgrade head`

## Build

Run: `build.sh`

## Test

Run: `cd tests && ./test.sh`

## Push on Docker Hub

Run: `./docker_push.sh`
