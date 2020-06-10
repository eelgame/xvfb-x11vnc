FROM ubuntu:16.04
ADD sources.list.16.04 /etc/apt/sources.list

RUN apt update && apt install -y xvfb x11vnc


ADD start.sh /root/
RUN chmod +x /root/start.sh

RUN apt-get autoclean && \
    apt-get autoremove && \
    rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["/root/start.sh"]

