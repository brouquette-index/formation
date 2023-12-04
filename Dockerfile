FROM httpd
LABEL maintainer="benoit"
RUN apt update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y git
RUN rm -rf /var/www/html/*
RUN git clone https://github.com/daviddias/static-webpage-example.git /var/www/html/
EXPOSE 80
CMD ["httpd-foreground"]
