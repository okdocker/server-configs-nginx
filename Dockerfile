FROM okdocker/nginx:mainline

ADD mime.types nginx.conf /etc/nginx/
ADD h5bp /etc/nginx/h5bp
ADD pagespeed /etc/nginx/pagespeed
ADD proxy /etc/nginx/proxy
ADD sites-available /etc/nginx/sites-available
ADD sites-enabled /etc/nginx/sites-enabled
ADD www /var/www

