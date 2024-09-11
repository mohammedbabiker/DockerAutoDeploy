FROM alpine:3

LABEL org.opencontainers.image.source https://github.com/mohammedbabiker/docker-auto-deploy
LABEL org.opencontainers.image.title="Docker auto deploy"
LABEL org.opencontainers.image.description="This is a Docker image auto deploy via CI/CD pipelines, built from GitHub."
LABEL org.opencontainers.image.authors="Mohammed Babiker"
LABEL org.opencontainers.image.licenses="MIT"

RUN apk add --no-cache bash

WORKDIR /app

ADD entry.sh .

RUN chmod +x entry.sh

ENTRYPOINT [ "/app/entry.sh" ]
