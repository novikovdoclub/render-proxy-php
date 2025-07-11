# Используем официальный образ PHP с Apache
FROM php:8.2-apache

# Включаем модуль mod_rewrite для Apache
RUN a2enmod rewrite

# Устанавливаем cURL
RUN docker-php-ext-install curl

# Копируем proxy.php в корневую папку сервера
COPY proxy.php /var/www/html/proxy.php

# Перезапускаем Apache
CMD ["apache2-foreground"]
