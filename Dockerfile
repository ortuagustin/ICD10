FROM docker.elastic.co/elasticsearch/elasticsearch:6.6.0

RUN /usr/share/elasticsearch/bin/elasticsearch-plugin install analysis-phonetic