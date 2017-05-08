from php:7-fpm
RUN apt-get update && apt-get install -y libpng12-dev libxml2-dev libjpeg-dev curl libpq-dev vim git \
&& rm -rf /var/lib/apt/lists/* \
&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr \
&& docker-php-ext-install gd mbstring pdo pdo_mysql pdo_pgsql mysqli zip soap
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer