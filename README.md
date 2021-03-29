# LNMP
基于debian的lnmp docker镜像
LNMP image base on debian
Nginx 1.14
PHP 7.3
MariaDB 10.3
　　# Quick Start
　　
　　## Download Image
　　
　　You can use `docker pull` to download the image to your machines.
　　
　　for amd64
　　
　　```shell
　　docker pull shevonkuan/lnmp:latest
　　```
　　
　　For amd64, armv8 and i386
　　
　　```shell
　　docker pull shevonkuan/lnmp:all_platform_v1.0
　　```
　　
　　## Start Container
　　
　　```shell
　　docker run -dit \
　　-p 80:80 \
　　-p 443:443 \
　　-p 3306:3306 \
　　-v /var/www/html:/var/www/html \
　　-privileged=true \
　　--name=<your container name here>  \
　　shevonkuan/lnmp:latest
　　```
　　Please make sure that you know all the options listed above.
- port 80 is  used for nginx http.
- port 443 is used for nginx https (you should volumn your certificate and set up the tls in `/etc/nginx/nginx.conf`)
- port 3306 is used for mysql(MariaDB)

You can visit `127.0.0.1` to check if your container start successful ly.

## Attach the Shell 
```shell
docker exec -it <name or id> /bin/bash
```

##  Check LNMP Status
You need to exec a shell then attach it to run the command here.
```shell
service nginx status
service php-fpm status
service mysql status
```
## About the Config File
You can find Nginx config file at
```
/etc/nginx/
```

## Other Info
The password of the mysql is null.
