#!/bin/bash

mkdir grafana
mkdir loki
mkdir prometheus
mkdir promtail
mkdir grafana/data/
mkdir loki/data/
mkdir prometheus/data/
mkdir prometheus/
mkdir promtail/data/
mkdir alertmanager
mkdir alertmanager/data
mv prometheus.yml /prometheus
mv config.yaml /promtail
mv alertmanager.yml /prometheus/rules
mv rules.yml /prometheus/rules
hostname -I >> server_ip.txt
