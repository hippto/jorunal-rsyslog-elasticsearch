# jorunal-rsyslog-elasticsearch
Forward logs from journal to elasticsearch via rsyslog

Usage
=====
The container need to know:

* The location of the journal
* The machine id
* IP or hostname of elasticsearch cluster

For instance:

    $ docker run -d -net host \
      -v /var/log/journal/:/var/log/journal/ \
      -v /etc/machine-id:/etc/machine-id \
      -e ELASTICSEARCH_HOST=elasticsearch.test.local
      hippto/jorunal-rsyslog-elasticsearch
