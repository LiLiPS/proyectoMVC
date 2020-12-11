FROM mysql:latest

# autora del Dockerfile.
LABEL maintainer="Liliana Parada Sanchez"

ENV MYSQL_DATABASE="proyectomvc"
ENV MYSQL_ROOT_PASSWORD="root"

COPY ./baseDatos/proyectomvc_vf.sql /docker-entrypoint-initdb.d/proyectomvc_vf.sql