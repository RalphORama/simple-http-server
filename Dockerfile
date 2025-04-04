FROM python:3-alpine

LABEL org.opencontainers.image.authors="jdkelley.oss@gmail.com,audrey@visleafs.me"
LABEL org.opencontainers.image.title="simple http server"
LABEL org.opencontainers.image.description="python 3 http.server run in a container"

EXPOSE 8000
WORKDIR /serve

# pass -u for unbuffered output so stdout works
ENTRYPOINT [ "python3", "-u", "-m", "http.server", "8000" ]
