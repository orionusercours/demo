#!/bin/bash
if [[ $# -ne 1 ]]; then
    echo "Використання: $0 <ім_я_файлу>"
    exit 1
fi

filename="$1"

if [[ -f "$filename" ]]; then
    line_count=$(wc -l < "$filename")
    echo "Файл '$filename' містить $line_count рядків."
else
    echo "Помилка: '$filename' не є дійсним файлом."
fi
