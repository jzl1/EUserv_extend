FROM python:3.9.0-alpine3.12

WORKDIR /app

RUN apk update && apk add bash wget \
    && wget -O main.py --no-check-certificate "https://raw.githubusercontent.com/jzl1/EUserv_extend/main/main.py" \
    && wget -O run.sh --no-check-certificate "https://raw.githubusercontent.com/jzl1/EUserv_extend/main/run.sh" \
    && wget -O app.sh --no-check-certificate "https://raw.githubusercontent.com/jzl1/EUserv_extend/main/app.sh" \
    && apk del wget \
    && python -m pip install --upgrade requests \
    && python -m pip install --upgrade beautifulsoup4 \
    && rm -rf /var/cache/apk/* \
    && rm -rf /var/lib/apk/* \
    && rm -rf /etc/apk/cache/*

CMD [ "bash","run.sh" ]
