# Ubuntu dockerfile

FROM ubuntu:14.04

MAINTAINER k3roulas@gmail.com

ADD files/sshd_config /etc/ssh/sshd_config
ADD files/supervisord.conf /etc/supervisor/conf.d/supervisord.conf
#ADD files/sources.list /etc/apt/sources.list
ADD files/install.sh /root/install.sh
RUN /root/install.sh

EXPOSE 22

CMD ["/usr/bin/supervisord"]
