[![License](https://img.shields.io/badge/license-Apache--2.0-blue.svg)](https://github.com/LREN-CHUV/i2b2-setup/blob/master/LICENSE) [![DockerHub](https://img.shields.io/badge/docker-hbpmip%2Fi2b2--setup-008bb8.svg)](https://hub.docker.com/r/hbpmip/i2b2-setup/) [![Codacy Badge](https://api.codacy.com/project/badge/Grade/365ece9e92c042568a1f68e6650ff6b9)](https://www.codacy.com/app/hbp-mip/i2b2-setup?utm_source=github.com&amp;utm_medium=referral&amp;utm_content=LREN-CHUV/i2b2-setup&amp;utm_campaign=Badge_Grade) [![CircleCI](https://circleci.com/gh/LREN-CHUV/i2b2-setup.svg?style=svg)](https://circleci.com/gh/LREN-CHUV/i2b2-setup)

# I2B2 setup

Migration scripts for setting up a simplified version of the I2B2 database.

## Introduction

Data Factory is a data management, quality control and data integration toolkit for curating data in order to be imported in the Medical Informatics Platform. In Data Factory, we use a database with a simplified -according to our needs- version of the original I2B2 schema so as to store and harmonize clinical data.

## Build

Run: `./build.sh`

## Test

Run: `cd tests && ./test.sh`

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

# Acknowledgements

This work has been funded by the European Union Seventh Framework Program (FP7/2007­2013) under grant agreement no. 604102 (HBP)

This work is part of SP8 of the Human Brain Project (SGA1).
