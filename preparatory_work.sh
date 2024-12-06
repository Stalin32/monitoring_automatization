#!/bin/bash

mkdir grafana
mkdir loki
mkdir prometheus
mkdir promtail
mkdir grafana/data/
mkdir loki/data/
mkdir prometheus/data/
mkdir promtail/data/
mv prometheus.yml /prometheus
mv config.yaml /promtail
