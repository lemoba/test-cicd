FROM harbor.ranen.cc/php-images/php-composer-nginx:php74-v1.0
COPY --chown=nginx:nginx . /var/www/html
RUN echo "php artisan config:cache && php artisan route:cache" > /usr/bin/init.sh
