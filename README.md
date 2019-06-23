# Hospital Español - Estandar ICD-10

Aplicación web que permite consultas siguiendo el estandar [ICD-10](https://en.wikipedia.org/wiki/ICD-10). Para construirla, se utilizaron las siguientes tecnologias:
 * Stack `ElasticSearch-Kibana-Logstah` (ELK) para almacenamiento y búsquedas.
 * [VueJS](https://vuejs.org/) para desarrollar la aplicación web; es un proyecto aparte, en este [repositorio](https://github.com/ortuagustin/diagnosticos-ICD10).
 * [docker](https://www.docker.com/) y [docker-compose](https://docs.docker.com/compose/) para la infraestructura.

## Requisitos

1. [docker](https://www.docker.com/)
2. [docker-compose](https://docs.docker.com/compose/)
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
  git clone --recurse-submodules https://github.com/ortuagustin/ICD10.git
```

**Este repositorio usa `git submodules`; si hay que inicializar/actualizar el submodule en un repositorio ya existente, ejecutar:**

```bash
  ## dentro del directorio ICD10
  git submodule update --init --recursive
```

2. Levantar el stack:

```bash
  cd ICD10
  # para ver los logs en tiempo real en la consola
  docker-compose up
  # levanta el stack en segundo plano
  docker-compose up -d
```
**Si se actualiza el proyecto (por ej, en un `git pull`, ejecutar `docker-composer up --build` para que vuelva a construir los contenedores y los cambios tengan impacto`)**

1. `ElasticSearch` queda levantado en [http://localhost:9200/](http://localhost:9200/)
2. `Kibana` corre en [http://localhost:5601/](http://localhost:5601/)
3. La aplicación web de consulta de diagnosticos corre en [http://localhost:8080/](http://localhost:8080/)

<img src="https://github.com/ortuagustin/diagnosticos-ICD10/blob/master/app.png">

## Referencias

* [ICD-10](https://en.wikipedia.org/wiki/ICD-10)
* [ElasticSearch+Docker](https://www.elastic.co/guide/en/elasticsearch/reference/current/docker.html)
