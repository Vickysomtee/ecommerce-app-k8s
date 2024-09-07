# Use php:7.4-apache as the base image.
FROM php:7.4-apache

# Set the working directory
WORKDIR /var/www/html

RUN docker-php-ext-install mysqli && docker-php-ext-enable mysqli

# Enable Apache rewrite module
RUN a2enmod rewrite

# Copy the application files to the container
COPY . /var/www/html

EXPOSE 80