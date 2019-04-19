FROM php:7.2-apache
COPY .  .
EXPOSE 80


########PRODUCTION DockerFile##########

# Specify a base image
#FROM fedora
#COPY . .
#RUN yum update -y
#RUN yum install httpd -y
#ENTRYPOINT ["/usr/sbin/httpd"]
#CMD ["service http start", "chkconfig http on"]
#CMD ["service http start"]

#CMD ["-D", "FOREGROUND"]

#move file and folders from local to file system inside temp container
#COPY . .
# Install some dependencies
#RUN apk update; \
#    apk upgrade;




#Default command to run when container is first created
#RUN echo "Include /usr/local/apache2/conf/demo.apache.conf" \
#    >> /usr/local/apache2/conf/httpd.conf

#FROM ubuntu 
#RUN apt-get update 
#RUN apt-get install -y apache2 
#RUN apt-get install -y apache2-utils 
#RUN apt-get clean 
#EXPOSE 80 
#CMD [“apache2ctl”, “-D”, “FOREGROUND”]
#CMD ["-D", "FOREGROUND"]