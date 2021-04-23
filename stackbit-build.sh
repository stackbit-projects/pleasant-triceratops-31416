#!/usr/bin/env bash

set -e
set -o pipefail
set -v

echo "stackbit-build.sh: start build"

# fetch data from CMS through stackbit-pull
npx @stackbit/stackbit-pull --stackbit-pull-api-url=https://api.stackbit.com/pull/608314161d73d50017d0fa2d

# build site
npm run build

echo "stackbit-build.sh: finished build"
