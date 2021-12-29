FROM alpine:latest as builder

RUN apk add --no-cache git wget
RUN wget https://github.com/argoproj/argo-workflows/releases/download/v3.2.6/argo-linux-amd64.gz
RUN gunzip argo-linux-amd64.gz
RUN chmod +x argo-linux-amd64
RUN mv ./argo-linux-amd64 /usr/bin/argo

FROM alpine:latest as production

LABEL "maintainer"="amaramusic@gmail.com <amaramusic@gmail.com>"

COPY --from=builder /usr/bin/argo /usr/bin/argo

WORKDIR /data

ENTRYPOINT ["argo", "lint",  "--offline", "--kinds=workflows"]
