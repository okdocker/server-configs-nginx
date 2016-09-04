FROM okdocker/nginx-ng:1.11.3-1.11.33.3

ADD mime.types nginx.conf /etc/nginx/
ADD h5bp /etc/nginx/h5bp
ADD pagespeed /etc/nginx/pagespeed
ADD proxy /etc/nginx/proxy
ADD sites-available /etc/nginx/sites-available
ADD sites-enabled /etc/nginx/sites-enabled
ADD www /var/www

ADD bin/docker-entrypoint /sbin/docker-entrypoint
CMD ["/sbin/docker-entrypoint"]

