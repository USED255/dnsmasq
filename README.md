# dnsmasq
wrtyis@outlook.com

简单的 Dnsmasq 镜像, 用 GitHub Action 每周更新.

./docker-compose.yml
```yml
version: "3"
services:
    dnsmasq:
        image: used255/dnsmasq
        container_name: dnsmasq
        cap_add: 
            - NET_ADMIN
        volumes:
            - ./dnsmasq.conf:/etc/dnsmasq.conf
            - ./tftp:/tftp
        restart: always
        environment:
            - TZ=Asia/Shanghai
        network_mode: "host"
```

./dnsmasq.conf
```
bind-interfaces
interface=eth0
port=0
dhcp-no-override

log-dhcp
log-queries

enable-tftp
tftp-root=/tftp

pxe-service=X86-64_EFI,,ipxe.efi
dhcp-range=192.168.1.1,proxy
```
