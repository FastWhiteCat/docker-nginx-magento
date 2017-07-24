FROM nginx:1.13.3

RUN apt-get update && \
    apt-get install -y \
    curl

EXPOSE 80

ADD conf.d/ /etc/nginx/conf.d/

ADD 502.html /var/www/502.html

ADD start.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/start.sh

RUN rm /var/log/nginx/access.log
RUN rm /var/log/nginx/error.log

CMD ["usr/local/bin/start.sh"]
