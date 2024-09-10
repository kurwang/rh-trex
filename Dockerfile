FROM registry.access.redhat.com/ubi9/ubi-minimal:9.4-1227.1725849298

RUN \
    microdnf install -y \
    util-linux \
    && \
    microdnf clean all

COPY \
    * \
    /usr/local/bin/trex

EXPOSE 8000

ENTRYPOINT ["/usr/local/bin/trex", "serve"]

LABEL name="trex" \
      vendor="Red Hat" \
      version="0.0.1" \
      summary="rh-trex API" \
      description="rh-trex API"
