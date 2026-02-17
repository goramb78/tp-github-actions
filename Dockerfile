# Image officielle PHP avec Apache
FROM php:8.2-apache

# Copier le fichier vhost
COPY docker/apache/vhost.conf /etc/apache2/sites-available/000-default.conf

# Copier les fichiers PHP dans le dossier Apache
COPY src/ /var/www/html/

# Donner les permissions
RUN chown -R www-data:www-data /var/www/html

# Exposer le port 80
EXPOSE 80
