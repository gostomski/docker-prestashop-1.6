FROM prestashop/prestashop:1.6-5.6-apache

## Change user to perform privileged actions
ADD ./docker/prestashop/ioncube_loader_lin_5.6.so /usr/local/lib/php/extensions/no-debug-non-zts-20131226/
COPY --chown=www-data:www-data ./eldor24.pl/ /var/www/html/
RUN echo "zend_extension = /usr/local/lib/php/extensions/no-debug-non-zts-20131226/ioncube_loader_lin_5.6.so" >> /usr/local/etc/php/php.ini
RUN rm -rf /tmp/data-ps
COPY --chmod=0664 docker/prestashop/init-scripts/ /tmp/init-scripts/