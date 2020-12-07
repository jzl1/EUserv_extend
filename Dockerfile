FROM python:3.9.0-alpine3.12

WORKDIR /app

RUN apk update && apk add wget \
    && wget --no-check-certificate "https://github.com/CokeMine/EUserv_extend/raw/main/main.py" \
    && apk del wget \
    && rm -rf /var/cache/apk/* \
    && rm -rf /var/lib/apk/* \
    && rm -rf /etc/apk/cache/*

CMD [ "python","main.py" ]
