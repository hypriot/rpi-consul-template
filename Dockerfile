FROM hypriot/rpi-alpine-scratch
MAINTAINER Andreas <andreas@hypriot.com>

RUN apk update && apk add ca-certificates

COPY content/consul-template /usr/local/bin/consul-template

ENTRYPOINT ["/usr/local/bin/consul-template"]
