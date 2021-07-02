FROM wordpress

RUN mv "$PHP_INI_DIR/php.ini-production" "$PHP_INI_DIR/php.ini"

RUN printf "\n" | pecl install redis

RUN echo "extension=redis.so" > /usr/local/etc/php/conf.d/redis.ini

RUN rm -f /usr/src/wordpress/.htaccess

