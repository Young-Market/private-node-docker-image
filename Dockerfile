ARG NODE_TAG=latest
FROM wavesplatform/wavesnode:$NODE_TAG
COPY ym.custom.conf /etc/waves/waves.conf
