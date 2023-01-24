FROM php:7.4-fpm

WORKDIR /var/www

# Install Dependencies
RUN apt-get update && apt-get install -y \
    build-essential \
    libpng-dev \
    libzip-dev \
    libjpeg62-turbo-dev \
    libfreetype6-dev \
    locales \
    zip \
    jpegoptim optipng pngquant gifsicle \
    vim \
    unzip \
    git \
    curl \
    nano \
	libonig-dev

# Clear Cache
RUN apt-get clean && rm -rf /var/lib/apt/lists/*

# Install Exstension
RUN docker-php-ext-install pdo_mysql mbstring zip exif pcntl
RUN docker-php-ext-configure gd --enable-gd --with-freetype=/usr/include/ --with-jpeg=/usr/include/
RUN docker-php-ext-install gd

# Add user for laravel
RUN groupadd -g 1000 www
RUN useradd -u 1000 -ms /bin/bash -g www www

# Copy Application Folder
COPY . /var/www/

# Copy existing permissions from folder to docker
COPY --chown=www:www . /var/www/
RUN chown -R www-data:www-data /var/www

# Change Current User to www
USER www

EXPOSE 9000
CMD ["php-fpm"]
