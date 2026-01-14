FROM elasticsearch:8.19.9

USER root

COPY elasticsearch.yml /usr/share/elasticsearch/config/elasticsearch.yml
COPY heap.options /usr/share/elasticsearch/config/jvm.options.d/heap.options

RUN chown elasticsearch:elasticsearch \
    /usr/share/elasticsearch/config/elasticsearch.yml \
    /usr/share/elasticsearch/config/jvm.options.d/heap.options

USER elasticsearch

