FROM postgres:9.4
MAINTAINER Silvan Spross
RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive \
  apt-get -qfy install postgis postgresql-9.4-postgis-2.1 \
  && apt-get clean
ADD create_extensions.sh docker-entrypoint-initdb.d/create_extensions.sh
