FROM postgres:10.5
RUN apt update && apt install -y python3-psutil
COPY --chown=postgres:postgres pg_autoconf.py /etc/pg_autoconf.py
RUN python3 /etc/pg_autoconf.py > /etc/postgres.conf
#COPY --chown=postgres:postgres postgres.conf /etc/postgres.confRUN echo -e '#!bin/sh \ncreatedb -O postgres ${POSTGRES_DB}\n echo "Created DB ${POSTGRES_DB}"' > /docker-entrypoint-initdb.d/99_create_db.sh \ && chmod 755 /docker-entrypoint-initdb.d/99_create_db.sh
