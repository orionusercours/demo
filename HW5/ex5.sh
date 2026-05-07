#!/bin/bash
if [[ $# -ne 2 ]]; then
    echo "Використання: $0 <вихідний_файл> <файл_призначення>"
    exit 1
fi

source_file="$1"
dest_file="$2"

cp "$source_file" "$dest_file"

if [[ $? -eq 0 ]]; then
    echo "Успішно скопійовано '$source_file' у '$dest_file'."
else
    echo "Не вдалося скопіювати файл."
fi
