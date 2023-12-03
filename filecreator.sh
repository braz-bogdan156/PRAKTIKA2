#!/bin/bash

# Отримати останній номер файлу або встановити 0, якщо файлів немає
last_number=$(ls -1 | grep -Eo '[0-9]+' | sort -n | tail -n 1)
last_number="${last_number:-0}"

# Створення 25 файлів
for ((i = last_number + 1; i <= last_number + 25; i++)); do
    touch "dmytro$i"
done
