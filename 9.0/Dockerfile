FROM valkey/valkey:9.0.3

LABEL org.opencontainers.image.title="Valkey Cluster"
LABEL org.opencontainers.image.description="A lightweight Valkey cluster setup for local development and testing. Based on the official Valkey image and includes the create-cluster utility."
LABEL org.opencontainers.image.vendor="Ercan SORMAZ"
LABEL org.opencontainers.image.url="https://ercan.dev/projects/valkey-cluster-docker-image"
LABEL org.opencontainers.image.source="https://github.com/ercansormaz/docker-valkey-cluster"
LABEL org.opencontainers.image.documentation="https://github.com/ercansormaz/docker-valkey-cluster/blob/main/README.md"
LABEL org.opencontainers.image.licenses="MIT"
LABEL org.opencontainers.image.version="9.0.3"
LABEL org.opencontainers.image.ref.name="ercansormaz/valkey-cluster:9.0.3"

# Download create-cluster script from valkey repository
ADD https://raw.githubusercontent.com/valkey-io/valkey/refs/tags/9.0.3/utils/create-cluster/create-cluster /usr/local/bin/create-cluster
RUN chmod +x /usr/local/bin/create-cluster

# Copy custom entrypoint script
COPY ../entrypoint.sh /usr/local/bin/entrypoint.sh
RUN chmod +x /usr/local/bin/entrypoint.sh

# Override create-cluster script settings
COPY ../config.sh /data/config.sh

ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]

EXPOSE 30001 30002 30003 30004 30005 30006