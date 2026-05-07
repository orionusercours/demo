#!/bin/bash
filename="testfile.txt"

if [[ -e "$filename" ]]; then
    echo "Файл '$filename' існує у поточному каталозі."
else
    echo "Файл '$filename' не існує."
fi
