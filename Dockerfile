FROM rust:1.98

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        binutils nasm grub-pc-bin xorriso curl ca-certificates \
    && rm -rf /var/lib/apt/lists/*

ENV MISE_DATA_DIR="/mise"
ENV MISE_CONFIG_DIR="/mise"
ENV MISE_CACHE_DIR="/mise/cache"
ENV MISE_INSTALL_PATH="/usr/local/bin/mise"
ENV PATH="/mise/shims:$PATH"
RUN curl https://mise.run | sh

WORKDIR /build
ENTRYPOINT ["mise", "run", "build"]
