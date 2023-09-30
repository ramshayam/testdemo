FROM centos:centos7
RUN yum install -y httpd 
RUN yum install -y zip 
RUN yum install -y unzip 
ADD https://www.free-css.com/assets/files/free-css-templates/download/page296/little-fashion.zip /var/www/html/
WORKDIR /var/www/html/
RUN unzip little-fashion.zip
RUN cp -rvf 2127_little_fashion/* .
RUN rm -rf 2127_little_fashion little_fashion.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
