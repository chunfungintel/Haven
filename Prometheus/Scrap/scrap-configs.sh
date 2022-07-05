#!/bin/bash

kubectl create secret generic additional-scrape-configs --from-file=prometheus-additional.yaml --dry-run=client -oyaml | tee additional-scrape-configs.yaml

kubectl --insecure-skip-tls-verify apply -n prometheus -f additional-scrape-configs.yaml

