# Dockerfile for mini_httpd

FROM alpine:3.18.3

RUN \
 apk add --update mini_httpd bash curl jq \
 &&\
 sed \
  -i /etc/mini_httpd/mini_httpd.conf \
  -e 's/^chroot$/#chroot/' \
  -e 's/^#nochroot$/nochroot/' \
 &&\
 rm -rf /var/cache/apk/*

EXPOSE 80

VOLUME /var/www/localhost/htdocs
  
CMD [\
 "mini_httpd", \
 "-C", "/etc/mini_httpd/mini_httpd.conf", \
 "-c", "**.cgi|**.sh", \
 "-l", "/dev/stdout", \
 "-D" \
]
