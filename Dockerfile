FROM okdocker/nginx

ADD mime.types nginx.conf /etc/nginx/
ADD h5bp /etc/nginx/h5bp
ADD sites-available /etc/nginx/sites-available
ADD sites-enabled /etc/nginx/sites-enabled
ADD pagespeed /etc/nginx/pagespeed
ADD www /var/www

