#!/bin/bash
read -p "Введіть речення: " sentence

read -a words <<< "$sentence"

reversed_sentence=""

for (( i=${#words[@]}-1; i>=0; i-- )); do
    reversed_sentence+="${words[i]} "
done

echo "Результат: ${reversed_sentence% }"
