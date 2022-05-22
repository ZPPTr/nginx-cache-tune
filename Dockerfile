FROM docker.io/bitnami/openresty:latest

USER 0

RUN mkdir "/var/cache/nginx"
RUN mkdir "/var/log/nginx"

RUN chgrp -R root /var/cache/nginx /var/run /var/log/nginx && \
    chmod -R 770 /var/cache/nginx /var/run /var/log/nginx

USER 1001