WATCH_DIR="/home/test/watch"
inotifywait -m -e close_write --format '%w%f' "$WATCH_DIR" | while read -r NEWFILE
do
   if [[ -f "$NEWFILE" && "$NEWFILE" != *.back ]]; then
       echo "Виявлено новий файл: $NEWFILE"
       echo "--- Вміст файлу ---"
       cat "$NEWFILE"
       echo "-------------------"
       mv "$NEWFILE" "${NEWFILE}.back"
       echo "Перейменовано на: ${NEWFILE}.back"
   fi
done
