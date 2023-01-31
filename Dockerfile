from openresty/openresty:jammy
expose 8000:80

RUN apt update && apt upgrade -y
RUN apt install -y git

RUN chmod 777 /usr/local/openresty/nginx/html

COPY default.conf /etc/nginx/conf.d/default.conf
COPY nginx.conf /usr/local/openresty/nginx/conf/nginx.conf

COPY start.sh /etc/init.d/start.sh
RUN chmod 777 /etc/init.d/start.sh
RUN update-rc.d start.sh defaults

USER root
