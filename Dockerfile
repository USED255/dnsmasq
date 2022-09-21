FROM alpine:latest

ENTRYPOINT [ "/usr/sbin/dnsmasq", "-d" ]
CMD [ "-C", "/etc/dnsmasq.conf" ]

RUN  apk add --no-cache dnsmasq
