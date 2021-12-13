FROM tiangolo/uwsgi-nginx-flask:python3.8-alpine

# ENV STATIC_PATH /app/static/build/static

COPY ./app /app

RUN pip install --no-cache-dir --upgrade pip setuptools wheel && \
    pip install --no-cache-dir --upgrade -r /app/requirements.txt

ARG STATUS
COPY nginx/nginx.conf /etc/nginx/conf.d/default-ssl.conf

# USER nginx
