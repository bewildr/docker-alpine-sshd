FROM bewildr/docker-alpine-confd
LABEL maintainer="Aadryn <aadryn@users.noreply.github.com>"
COPY root.fs /
RUN apk add -q --no-cache openssh bash \
    && /usr/bin/ssh-keygen -A \
    && mkdir -p /root/.ssh/
VOLUME [ "/root/.ssh/authorized_keys" ]
EXPOSE 22