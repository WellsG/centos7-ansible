# http://jperrin.github.io/centos/2014/09/25/centos-docker-and-systemd/
FROM centos7-systemd

MAINTAINER wguo@redhat.com

# install epel repo
RUN yum -y install epel-release

# install vim / sudo
RUN yum -y install vim sudo

# install ansible
RUN yum -y install ansible

EXPOSE 80 3306 443 22

CMD ["/usr/sbin/init"]
