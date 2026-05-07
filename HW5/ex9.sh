#!/bin/bash
read -p "Введіть ім'я файлу для читання: " filename

if [[ -r "$filename" ]]; then
    echo " Вміст файлу $filename:"
    cat "$filename"
else
    echo "Помилка: Файл '$filename' не існує або доступ заборонено." >&2
    exit 1
fi
