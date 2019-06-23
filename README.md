# Hospital Español - Estandar ICD-10

Stack `ElasticSearch-Kibana-Logstah` (ELK) que permite consultas siguiendo el estandar [ICD-10](https://en.wikipedia.org/wiki/ICD-10)

## Requisitos

1. [Docker](https://www.docker.com/)
2. [Docker-Compose](https://docs.docker.com/compose/)
3. Para no tener que usar `sudo` en los comandos de *docker*:

```bash
  sudo usermod -a -G docker $USER
```

> Es necesario deslogearse para que los cambios tomen efecto.

4. Asegurarse que el servicio *docker* está corriendo:

```bash
  # con systemctl  
  sudo systemctl start docker
  
  # ó, con service
  sudo service docker start
```

## Instalación

1. Clonar el repositorio.

```bash
  git clone https://github.com/ortuagustin/ICD10.git
```

2. Levantar el stack:

```bash
  cd ICD10
  # para ver los logs en tiempo real en la consola
  docker-compose up
  # levanta el stack en segundo plano
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
