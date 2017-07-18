FROM alpine

RUN apk add --no-cache openssl

ENV DOCKERIZE_VERSION v0.5.0
RUN mkdir -p /dockerize/bin
RUN wget https://github.com/jwilder/dockerize/releases/download/$DOCKERIZE_VERSION/dockerize-alpine-linux-amd64-$DOCKERIZE_VERSION.tar.gz \
    && tar -C /dockerize/bin -xzvf dockerize-alpine-linux-amd64-$DOCKERIZE_VERSION.tar.gz \
    && rm dockerize-alpine-linux-amd64-$DOCKERIZE_VERSION.tar.gz

ADD bin/*.sh /dockerize/bin

CMD /bin/sh