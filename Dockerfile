FROM fedora:22

RUN dnf install rsyslog rsyslog-elasticsearch -y && dnf clean all

ADD rsyslog.conf /etc/rsyslog.conf
ADD start.sh start.sh

VOLUME /var/lib/rsyslog

ENTRYPOINT ["/bin/bash", "start.sh"]
