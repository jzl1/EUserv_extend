nohup bash /app/app.sh >/app/app.log 2>&1 &
tail -F /app/app.log
