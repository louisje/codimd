#!/usr/bin/env bash

set -x

podman-compose -f deployments/docker-compose.yml down

set -e

./deployments/build.sh 'hackmdio/runtime:14.21.3-20241009-83984c36' 'hackmdio/buildpack:14.21.3-20241009-83984c36'

podman-compose -f deployments/docker-compose.yml up -d
