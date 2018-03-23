FROM alpine
LABEL maintainer="https://github.com/WpTestLabs/MariaDB"
RUN set -xe && \
    apk add --no-cache  bash  ca-certificates  make \
        mariadb mariadb-client \
        pwgen   tzdata su-exec \
      && rm -rf /tmp/src && rm -rf /var/cache/apk/*
#CMD ["/srv/stMariaDbSvr.sh"]
CMD ["/bin/bash"]
