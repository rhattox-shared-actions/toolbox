FROM debian:bookworm

ENV HELM_URL=https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3

RUN apt-get update -y
RUN apt-get install -y curl tar git wget
RUN rm -rf /var/lib/apt/lists/*

RUN curl ${HELM_URL} | bash
