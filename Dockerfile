# Specify the Base Image
FROM centos:7
# add a tag optional [ just tag ]
LABEL maintainer="our awesome teacher Claudio"

# Update our packages
RUN yum -y update && yum clean all

# Install Apache ---->
RUN yum install -y httpd

# Copy the app inside the container
COPY index.html /var/www/html

# Port on which the container should listen on
EXPOSE 80

# Run httpd by doing systemctl start httpd
# hey when container starts please start apache

ENTRYPOINT [ "/usr/sbin/httpd"]

# We e don't the container to exit
# run the container in the background
CMD [ "-D", "FOREGROUND"]



