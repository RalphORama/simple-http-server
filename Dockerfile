FROM python:3-alpine

LABEL org.opencontainers.image.authors="jdkelley.oss@gmail.com,audrey@visleafs.me"
LABEL org.opencontainers.image.title="simple http server"
LABEL org.opencontainers.image.description="python 3 http.server run in a container"

EXPOSE 8000
WORKDIR /serve

ENTRYPOINT python3 -m http.server 8000
