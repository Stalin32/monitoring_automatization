#!/bin/bash

# Проверка существования файла с IP-адресом
if [ ! -f "server_ip.txt" ]; then
  echo "Error: server_ip.txt not found."
  exit 1
fi

# Чтение IP-адреса из файла
server_ip=$(cat server_ip.txt)

# Проверка корректности IP-адреса (простая проверка)
if [[ ! "$server_ip" =~ ^([0-9]{1,3}\.){3}[0-9]{1,3}$ ]]; then
  echo "Error: Invalid IP address in server_ip.txt"
  exit 1
fi


# Функция для замены IP-адреса в файле
replace_ip() {
  local file="$1"
  #Проверка существования файла
  if [ ! -f "$file" ]; then
    echo "Warning: File '$file' not found. Skipping."
    return 0
  fi

  #Использование sed для замены, обрабатывает случаи с пробелами вокруг server_ip
  sed -i "s/\<server_ip\>/$server_ip/g" "$file"
  if [ $? -ne 0 ]; then
      echo "Error: Failed to replace IP in '$file'"
      exit 1
  fi

  echo "IP address replaced in '$file'"
}

# Замена IP-адреса в файлах
replace_ip "config.yaml"
replace_ip "prometheus.yml"

echo "IP address replacement completed successfully."

exit 0
