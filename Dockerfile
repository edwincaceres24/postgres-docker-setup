FROM postgres
COPY movies.sql /docker-entrypoint-initdb.d/

