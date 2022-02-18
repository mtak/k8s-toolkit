#!/bin/bash

VERSION="1.1"
NAMESPACE=''
IMAGENAME='merijntjetak/k8s-toolkit'

# Generate docker URI
if [[ "x$DOCKER_REGISTRY_HOST" != "x" ]]; then
  DOCKER_REGISTRY_AUTHORITY="${DOCKER_REGISTRY_HOST}/"
else
  DOCKER_REGISTRY_AUTHORITY=''
fi

if [[ "$1" == "build" ]]; then
  docker build --progress plain -t ${IMAGENAME} -t ${IMAGENAME}:${VERSION} .

elif [[ "$1" == "run" ]]; then
  docker run \
    --rm -it \
    ${IMAGENAME}:${VERSION}

elif [[ "$1" == "publish" ]]; then
  docker tag ${IMAGENAME}:${VERSION} ${DOCKER_REGISTRY_AUTHORITY}${IMAGENAME}:$VERSION
  docker push ${DOCKER_REGISTRY_AUTHORITY}${IMAGENAME}:$VERSION

else
  cat <<EOF
Usage: $0 action
Actions:
  build   - Build docker image
  run     - Run docker image
  publish - Publish docker image
Change the parameters in the run section to adjust for local testing variables.
EOF

fi

