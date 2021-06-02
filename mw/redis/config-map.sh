#!/usr/bin/env bash

kubectl create configmap redis-conf-map -n mw --from-file /data/k8s-volume//redis//conf/redis.conf -o yaml --dry-run=client | kubectl replace -f -
