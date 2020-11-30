FROM matomo:3.14.1-apache

RUN apt-get install -y --no-install-recommends bash

COPY docker-entrypoint.sh /entrypoint.sh

VOLUME /var/www/html

ENTRYPOINT ["/entrypoint.sh"]
CMD ["apache2-foreground"]
