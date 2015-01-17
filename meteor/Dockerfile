# Meteor Docker File

FROM k3roulas/ubuntu14

MAINTAINER k3roulas@gmail.com

ADD files/install.sh /root/install.sh
RUN /root/install.sh

ADD files/supervisord.conf /etc/supervisor/conf.d/supervisord.conf

EXPOSE 22 80

CMD ["/usr/bin/supervisord"]
