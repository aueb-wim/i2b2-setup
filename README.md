[![CHUV](https://img.shields.io/badge/CHUV-LREN-AF4C64.svg)](https://www.unil.ch/lren/en/home.html) [![License](https://img.shields.io/badge/license-Apache--2.0-blue.svg)](https://github.com/LREN-CHUV/i2b2-setup/blob/master/LICENSE) [![DockerHub](https://img.shields.io/badge/docker-hbpmip%2Fi2b2--setup-008bb8.svg)](https://hub.docker.com/r/hbpmip/i2b2-setup/) [![Codacy Badge](https://api.codacy.com/project/badge/Grade/365ece9e92c042568a1f68e6650ff6b9)](https://www.codacy.com/app/hbp-mip/i2b2-setup?utm_source=github.com&amp;utm_medium=referral&amp;utm_content=LREN-CHUV/i2b2-setup&amp;utm_campaign=Badge_Grade) [![CircleCI](https://circleci.com/gh/LREN-CHUV/i2b2-setup.svg?style=svg)](https://circleci.com/gh/LREN-CHUV/i2b2-setup)

# I2B2 setup

Migration scripts for an I2B2 database.

## Introduction

The goal of this project is to provide a Docker container including Alembic and a Python model of the I2B2 schema.

We use an I2B2 database twice in the Data Factory:

* I2B2 capture database: this database is used to capture as much as possible information from hospitals or research datasets, even if we do not understand it or know yet how to use it in MIP. Information in this database will be transformed and normalised into the I2B2 CDE database each time the MIP CDE (Common Data Elements) evolve or the mapping for the source data to the normalised CDE data needs adjustment.
* I2B2 CDE database: this database contains the variables selected by the Data Governance and Data Selection committee, in a normalised form in order to ensure a consistent representation of data across sites. Data in this database is then exported into the LDSM database, using a structure facilitating its use by Queries and the Algorithms.

## Usage

Example:

`docker run --rm -e "DB_URL=postgresql://postgres:postgres@localhost:5432/postgres" hbpmip/i2b2-setup:1.5.1 upgrade head`

## Build

Run: `./build.sh`

## Test

Run: `cd tests && ./test.sh`

## Publish on Docker Hub

Run: `./publish.sh`

## License

Copyright (C) 2017 [LREN CHUV](https://www.unil.ch/lren/en/home.html)

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
