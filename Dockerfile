FROM alpine

RUN apk add --no-cache openssl curl

ENV DOCKERIZE_VERSION v0.5.0
RUN mkdir -p /tool/bin
RUN wget https://github.com/jwilder/dockerize/releases/download/$DOCKERIZE_VERSION/dockerize-alpine-linux-amd64-$DOCKERIZE_VERSION.tar.gz \
    && tar -C /tool/bin -xzvf dockerize-alpine-linux-amd64-$DOCKERIZE_VERSION.tar.gz \
    && rm dockerize-alpine-linux-amd64-$DOCKERIZE_VERSION.tar.gz

ADD bin/*.sh /tool/bin

CMD /bin/sh