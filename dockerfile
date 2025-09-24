
FROM ubuntu:22.04
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -y \
    netcat-openbsd \
    cowsay \
    fortune-mod \
    bash \
    && ln -sf /usr/games/fortune /usr/bin/fortune \
    && ln -sf /usr/games/cowsay /usr/bin/cowsay \
    && rm -rf /var/lib/apt/lists/*
WORKDIR /app
COPY wisecow.sh .
RUN chmod +x wisecow.sh
EXPOSE 4499
CMD ["./wisecow.sh"]
