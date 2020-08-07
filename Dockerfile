FROM openjdk:8u265-jre-slim-buster

RUN mkdir -p /opt/secor
ADD target/secor-*-bin.tar.gz /opt/secor/

COPY src/main/scripts/docker-entrypoint.sh /docker-entrypoint.sh
RUN chmod +x /docker-entrypoint.sh

ENTRYPOINT ["/docker-entrypoint.sh"]
