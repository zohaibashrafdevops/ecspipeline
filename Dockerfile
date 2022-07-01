FROM public.ecr.aws/amazonlinux/amazonlinux:latest
MAINTAINER zohaib.ashraf@eurustechnologies.com
RUN yum update -y \
&& yum install -y httpd  zip unzip 
COPY  .  /var/www/html/
WORKDIR /var/www/html
RUN cp -rvf files/* /var/www/html
CMD ["/usr/sbin/httpd", "-D",  "FOREGROUND"]
EXPOSE 80

