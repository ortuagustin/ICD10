# Hospital Español - Estandar ICD-10

Stack `ElasticSearch-Kibana-Logstah` (ELK) que permite consultas siguiendo el estandar [ICD-10](https://en.wikipedia.org/wiki/ICD-10)

## Requisitos

1. [Docker](https://www.docker.com/)
2. [Docker-Compose](https://docs.docker.com/compose/)

## Instalación

1. Clonar el repositorio

```bash
  git clone https://github.com/ortuagustin/ICD10.git
```

2. Levantar el stack:

```bash
  cd ICD10
  docker-compose up -d
```

3. Para probar que `ElasticSearch` está levantado:

```bash
  curl http://127.0.0.1:9200/_cat/health
```
4. Para probar que `Kibana` está levantado, ingresar [desde el navegador](http://localhost:5601)

## Referencias

* [ICD-10](https://en.wikipedia.org/wiki/ICD-10)
* [ElasticSearch+Docker](https://www.elastic.co/guide/en/elasticsearch/reference/current/docker.html)
