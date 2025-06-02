# Dockerfile
FROM ghcr.io/gohugoio/hugo:latest

USER root

RUN apk add --no-cache ruby ruby-dev build-base \
  && gem install asciidoctor \
  && apk del build-base
