FROM alpine:latest
MAINTAINER "AnmolNagpal <anmol@clouddrove.com>"

ENV TERRAFORM_VERSION=0.12.0
ENV TERRAFORM_SHA256SUM=42ffd2db97853d5249621d071f4babeed8f5fdba40e3685e6c1013b9b7b25830

RUN apk add --update git curl openssh && \
    curl https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip > terraform_${TERRAFORM_VERSION}_linux_amd64.zip && \
    echo "${TERRAFORM_SHA256SUM}  terraform_${TERRAFORM_VERSION}_linux_amd64.zip" > terraform_${TERRAFORM_VERSION}_SHA256SUMS && \
    sha256sum -cs terraform_${TERRAFORM_VERSION}_SHA256SUMS && \
    unzip terraform_${TERRAFORM_VERSION}_linux_amd64.zip -d /bin && \
    rm -f terraform_${TERRAFORM_VERSION}_linux_amd64.zip

ENTRYPOINT ["/bin/terraform"]
