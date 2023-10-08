FROM moby/buildkit:master-rootless

# Requirements
USER root
RUN apk update && apk add wget curl bash

# update certificates
COPY .certs /certs
RUN mv /certs/harbor-ca.crt /usr/share/ca-certificates/mozilla/ &&\
    echo "mozilla/harbor-ca.crt" >> /etc/ca-certificates.conf && update-ca-certificates
RUN chown -R user:user /certs

# Start daemon
USER user

