# unlimiteck-postgres
Automatic Configuration Dockerfile image for PostgreSQL

### build and push
docker login -u yourdockerhubuser
docker build . --tag unlimiteck/unlimiteck-postgres:vXX
docker push unlimiteck/unlimiteck-postgres:vXX

