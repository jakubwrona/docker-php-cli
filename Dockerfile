FROM lucor/php7-cli:latest
RUN curl -L -O https://phar.phpunit.de/phpunit.phar && chmod +x phpunit.phar && mv phpunit.phar /usr/bin/phpunit
RUN curl -L -O https://getcomposer.org/composer.phar && chmod +x composer.phar && mv composer.phar /usr/bin/composer
RUN apk --no-cache --repository http://dl-4.alpinelinux.org/alpine/latest-stable/community  add \
php7-session \
php7-pdo \
php7-sqlite3 \
php7-pdo_sqlite \
php7-pdo_mysql \
php7-ctype
