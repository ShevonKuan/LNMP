FROM debian
EXPOSE 80 443 3306
ADD init.sh /
RUN mkdir -p /var/www \
    && apt update \
    && apt install -y nginx curl \
    && apt install -y php7.3 php7.3-fpm php7.3-sqlite3 \
    && apt install -y default-mysql-server\
    && apt clean \
    && chmod +x /init.sh \
    && rm /etc/nginx/sites-available/default\
    && rm -rf /etc/nginx/sites-enable\
    && rm -f /var/www/html/index.nginx-debian.html\
    && rm -rf /var/lib/apt/lists/*
ADD default.conf /etc/nginx/sites-available/default
ADD index.php /var/www/html
VOLUME ["/var/www"]
CMD ["sh","init.sh"]
