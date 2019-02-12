ARG MYSQL_VERSION=""
FROM mysql:${MYSQL_VERSION:+${MYSQL_VERSION}}

RUN apt-get update \
    && apt-get install iputils-ping curl -y --no-install-recommends

ADD ./nodejs_setup_8.x /var/
RUN chmod +x /var/nodejs_setup_8.x
RUN /var/nodejs_setup_8.x
RUN apt-get install -y nodejs -y --no-install-recommends
RUN npm install -g @vicoders/cli --unsafe
