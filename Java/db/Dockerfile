FROM postgres:14-alpine

ENV POSTGRES_DB=mydatabase \
    POSTGRES_USER=myuser \
    POSTGRES_PASSWORD=mypassword

COPY init/ /docker-entrypoint-initdb.d/