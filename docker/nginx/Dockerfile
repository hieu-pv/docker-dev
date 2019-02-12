ARG NGINX_VERSION=""
FROM nginx:${NGINX_VERSION:+${NGINX_VERSION}}
ADD ./nginx.conf /etc/nginx/nginx.conf
ADD ./conf.d/ /etc/nginx/conf.d/


RUN apt-get update \
    && apt-get install iputils-ping curl -y --no-install-recommends
