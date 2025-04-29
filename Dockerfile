FROM debian:bookworm-slim

ENV YQ_DOWNLOAD_URL=https://github.com/mikefarah/yq/releases/latest/download/yq_linux_amd64

RUN apt-get update -y
RUN apt-get install -y curl bash wget git jq
RUN rm -rf /var/lib/apt/lists/*

RUN wget ${YQ_DOWNLOAD_URL} -O /usr/bin/yq &&\
  chmod +x /usr/bin/yq