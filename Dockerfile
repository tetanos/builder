FROM rust:1.98

RUN apt-get update
RUN apt-get install -y binutils nasm grub-pc-bin xorriso curl
RUN curl -fsSL https://mise.run | sh
ENV PATH="/root/.local/bin:$PATH"
RUN rustup default nightly
RUN rustup component add rust-src
RUN cargo install xargo

WORKDIR /build
ENTRYPOINT ["mise", "run", "build"]
