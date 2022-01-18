FROM nginx:stable-alpine

COPY ./docker/nginx/nginx.conf /etc/nginx/

RUN apk --no-cache add tzdata \
  && cp /usr/share/zoneinfo/Asia/Tokyo /etc/localtime \
  && apk del tzdata

RUN set -x ; \
    addgroup -g 82 -S www-data ; \
    adduser -u 82 -D -S -G www-data www-data && exit 0 ; exit 1

ARG UWSGI_UPSTREAM_CONTAINER=python
ARG UWSGI_UPSTREAM_PORT=8000

RUN echo "upstream uwsgi-upstream { server $UWSGI_UPSTREAM_CONTAINER:$UWSGI_UPSTREAM_PORT; }" > /etc/nginx/conf.d/upstream.conf \
  && rm /etc/nginx/conf.d/default.conf

WORKDIR /var/www

CMD ["nginx"]