FROM postgres:17.2-alpine

ENV POSTGRES_DB=mydatabase \
   POSTGRES_USER=myuser \
   POSTGRES_PASSWORD=mypassword

COPY *.sql /docker-entrypoint-initdb.d/
