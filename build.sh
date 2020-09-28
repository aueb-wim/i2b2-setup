#!/usr/bin/env bash

#set -e


#if pgrep -lf sshuttle > /dev/null ; then
#  echo "sshuttle detected. Please close this program as it messes with networking and prevents builds inside Docker to work"
#  exit 1
#fi

#if [[ $NO_SUDO || -n "$CIRCLECI" ]]; then
#  CAPTAIN="captain"
#elif groups $USER | grep &>/dev/null '\bdocker\b'; then
#  CAPTAIN="captain"
#else
#  CAPTAIN="sudo captain"
#fi

BUILD_DATE=$(date -Iseconds) \
  VCS_REF=$(git describe --tags --dirty) \
  VERSION=$(git describe --tags --dirty) \
#  $CAPTAIN

docker build --tag simple_i2b2_setup --build-arg $BUILD_DATE --build-arg $VCS_REF --build-arg $VERSION .
