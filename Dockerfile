FROM alpine:3

RUN apk add --no-cache bash

WORKDIR /app

ADD entry.sh .

RUN chmod +x entry.sh

ENTRYPOINT [ "/app/entry.sh" ]
