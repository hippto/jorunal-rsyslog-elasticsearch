#!/bin/bash

ELASTICSEARCH_HOST=${ELASTICSEARCH_HOST:-"localhost"}

echo "ELASTICSEARCH_HOST host is set to $ELASTICSEARCH_HOST"

if [ "$ELASTICSEARCH_HOST" != "localhost" ]; then
    sed -i "s/server=\"localhost\"/server=\"$ELASTICSEARCH_HOST\"/" /etc/rsyslog.conf
fi

exec /usr/sbin/rsyslogd -n "$@"
