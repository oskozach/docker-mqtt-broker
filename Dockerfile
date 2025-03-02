ARG IMG_VERSION=latest
FROM eclipse-mosquitto:${IMG_VERSION}

COPY config/mosquitto.conf /mosquitto/config/mosquitto.conf
COPY docker-entrypoint.sh /

ENTRYPOINT ["sh", "./docker-entrypoint.sh"]

CMD ["/usr/sbin/mosquitto", "-c", "/mosquitto/config/mosquitto.conf"]
