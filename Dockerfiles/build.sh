#!/bin/bash

IMAGE=${1:-gar-registry.caas.intel.com/virtiot/dlstreamer-addon}

docker build -t  ${IMAGE} .

docker push ${IMAGE}


