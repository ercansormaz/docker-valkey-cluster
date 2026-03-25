FROM valkey/valkey:9.1.0-rc1

LABEL org.opencontainers.image.title="Valkey Cluster" \
      org.opencontainers.image.description="A lightweight Valkey cluster setup for local development and testing. Based on the official Valkey image and includes the create-cluster utility." \
      org.opencontainers.image.authors="Ercan SORMAZ <me@ercan.dev>" \
      org.opencontainers.image.url="https://hub.docker.com/r/ercansormaz/valkey-cluster" \
      org.opencontainers.image.source="https://github.com/ercansormaz/docker-valkey-cluster" \
      org.opencontainers.image.documentation="https://github.com/ercansormaz/docker-valkey-cluster/blob/main/README.md" \
      org.opencontainers.image.licenses="MIT" \
      org.opencontainers.image.version="9.1.0-rc1" \
      org.opencontainers.image.ref.name="ercansormaz/valkey-cluster:9.1.0-rc1"

# Download create-cluster script from valkey repository
ADD https://raw.githubusercontent.com/valkey-io/valkey/refs/tags/9.1.0-rc1/utils/create-cluster/create-cluster /usr/local/bin/create-cluster
RUN chmod +x /usr/local/bin/create-cluster

# Copy custom entrypoint script
COPY ../entrypoint.sh /usr/local/bin/entrypoint.sh
RUN chmod +x /usr/local/bin/entrypoint.sh

# Override create-cluster script settings
COPY ../config.sh /data/config.sh

ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]

EXPOSE 30001 30002 30003 30004 30005 30006