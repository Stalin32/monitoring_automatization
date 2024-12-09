# Инструкция по установке мониторинга
Для разворачивания сервера используется файл docker-compose.yml, который содержит следующие контейнеры:
- prometheus (хранит данные мониторинга)
- grafana (визуализирует данные)
- loki (хранит логи)
- promtail (собирает с сервера и отправляет логи в loki)
- alertmanager (отправляет оповещения при обнаружении сбоя)
- node-exporter (собирает данные с сервера)

Конфигурировать нужно слудующие сервисы:
- promtail (config.yml)
- prometheus (prometheus.yml)
- alertmanager (alertmanager.yml)

