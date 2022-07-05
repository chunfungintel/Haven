#!/bin/bash

kubectl create secret generic additional-scrape-configs --from-file=prometheus-additional.yaml --dry-run=client -oyaml | tee additional-scrape-configs.yaml

