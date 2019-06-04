#! /bin/bash

if [ -z "$1" ] || [ -z "$2" ]
then
    echo "USAGE: docker-build.sh <docker-repository> <version>"
    exit 1
fi

REPO=${1}
VERSION="${2}-debug"

docker build -t helloworld:$VERSION .
docker tag helloworld:$VERSION $REPO/helloworld:$VERSION
docker tag helloworld:$VERSION $REPO/helloworld:latest-debug

docker push $REPO/helloworld:$VERSION
docker push $REPO/helloworld:latest-debug