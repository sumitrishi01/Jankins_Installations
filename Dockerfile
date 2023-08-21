FROM ubuntu:latest

RUN apt-get update && apt-get install -y systemd

RUN systemctl mask systemd-logind.service system-udevd.service && systemctl mask getty.target systemd-getty-generator

RUN apt-get clean && \
rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

CMD ["/lib/systemd/systemd" ]