FROM alpine:3.8

LABEL maintainer=jacobwpeng

ARG ARIANG_VERSION="0.6.0"

ADD conf/nginx.conf /etc/nginx/conf.d/

ADD entrypoint.sh /usr/bin/

ADD https://github.com/mayswind/AriaNg/releases/download/${ARIANG_VERSION}/AriaNg-${ARIANG_VERSION}-AllInOne.zip /etc/nginx/ariang/

RUN apk --no-cache add nginx aria2 proxychains-ng && \
      mkdir -p /run/nginx

WORKDIR /etc/nginx/ariang/

RUN unzip *.zip

VOLUME /conf

VOLUME /samba

EXPOSE 6800

EXPOSE 8000

ENTRYPOINT ["/usr/bin/entrypoint.sh"]
