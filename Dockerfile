FROM alpine:3.5

RUN apk add --update
RUN apk add bash

RUN apk add certbot

COPY ./files/docker-entrypoint.sh /

CMD /docker-entrypoint.sh
