FROM ubuntu:24.04

WORKDIR /app

COPY . /app

RUN apt-get update && apt-get install -y --no-install-recommends \
    fortune-mod \
    cowsay \
    && rm -rf /var/lib/apt/lists/*

EXPOSE 4499

CMD [ "bash", "wisecow.sh" ]


