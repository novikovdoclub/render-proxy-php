# Используем официальный образ PHP с Apache и уже включённым cURL
FROM php:8.2-apache

# Включаем модуль mod_rewrite (для Apache)
RUN a2enmod rewrite

# Копируем наш прокси-файл в корневую папку сервера
COPY proxy.php /var/www/html/proxy.php

# Запускаем Apache в foreground режиме
CMD ["apache2-foreground"]
