ARG PG_MAJOR=15
FROM postgres:$PG_MAJOR
ARG PG_MAJOR

COPY . /tmp/pgvector

RUN apt install -y postgresql-common && \
    /usr/share/postgresql-common/pgdg/apt.postgresql.org.sh -y && \
    apt update && \
    apt install -y postgresql-$PG_MAJOR-pgq3
