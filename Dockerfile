FROM redis:8.2.3

LABEL maintainer="Ercan SORMAZ <me@ercan.dev>" \
      org.opencontainers.image.title="Redis Cluster for Local Development" \
      org.opencontainers.image.description="A lightweight Redis cluster setup for local development and testing. Based on the official Redis image and includes the create-cluster utility." \
      org.opencontainers.image.authors="Ercan SORMAZ <me@ercan.dev>" \
      org.opencontainers.image.url="https://hub.docker.com/r/ercansormaz/redis-cluster" \
      org.opencontainers.image.source="https://github.com/ercansormaz/docker-redis-cluster" \
      org.opencontainers.image.documentation="https://github.com/ercansormaz/docker-redis-cluster/blob/main/README.md" \
      org.opencontainers.image.licenses="MIT" \
      org.opencontainers.image.version="8.2.3" \
      org.opencontainers.image.ref.name="ercansormaz/redis-cluster:8.2.3"

# Download create-cluster script from redis repository
ADD https://raw.githubusercontent.com/redis/redis/refs/tags/8.2.3/utils/create-cluster/create-cluster /usr/local/bin/create-cluster
RUN chmod +x /usr/local/bin/create-cluster

# Copy custom entrypoint script
COPY entrypoint.sh /usr/local/bin/entrypoint.sh
RUN chmod +x /usr/local/bin/entrypoint.sh

# Override create-cluster script settings
COPY config.sh /data/config.sh

ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]

EXPOSE 30001 30002 30003 30004 30005 30006