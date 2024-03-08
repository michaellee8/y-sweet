FROM rust:1.76-bookworm as builder
WORKDIR /app
COPY . .
RUN cargo install --path crates/y-sweet

FROM debian:bookworm-slim
RUN apt-get update && apt-get install -y ca-certificates libc6 && rm -rf /var/lib/apt/lists/*
COPY --from=builder /usr/local/cargo/bin/y-sweet /usr/local/bin/y-sweet
ENTRYPOINT ["y-sweet"]