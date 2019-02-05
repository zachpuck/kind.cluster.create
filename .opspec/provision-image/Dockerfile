FROM golang:1.10-alpine

ENV KUBE_LATEST_VERSION="v1.13"

RUN apk update \
    && apk -U add git docker curl\
    && curl -L https://storage.googleapis.com/kubernetes-release/release/${KUBE_LATEST_VERSION}/bin/linux/amd64/kubectl -o /usr/local/bin/kubectl \
    && chmod +x /usr/local/bin/kubectl \
    && cd /go/src \
    && go get sigs.k8s.io/kind

