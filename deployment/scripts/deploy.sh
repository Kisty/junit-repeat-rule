#!/usr/bin/env bash

if [ "$TRAVIS_PULL_REQUEST" == 'false' ]; then
    mvn deploy -P sign,build-extras --settings $TRAVIS_BUILD_DIR/deployment/maven/settings.xml
fi