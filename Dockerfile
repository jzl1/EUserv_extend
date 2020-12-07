FROM python:3.9.0-alpine3.12

WORKDIR /app

RUN apk update && apk add bash wget \
    && wget --no-check-certificate "https://github.com/CokeMine/EUserv_extend/raw/main/main.py" \
    && apk del wget \
    && python -m pip install --upgrade requests \
    && python -m pip install --upgrade beautifulsoup4 \
    && rm -rf /var/cache/apk/* \
    && rm -rf /var/lib/apk/* \
    && rm -rf /etc/apk/cache/*

CMD [ "bash","run.sh" ]
