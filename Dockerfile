# http://jperrin.github.io/centos/2014/09/25/centos-docker-and-systemd/
FROM centos7_systemd

MAINTAINER wguo@redhat.com

# install epel repo
RUN yum -y install epel-release

# install initscripts
RUN yum -y install initscripts

# install vim / sudo / wget / unzip
RUN yum -y install vim sudo wget unzip

# install ansible
RUN yum -y install ansible

VOLUME ["/workspace"]

EXPOSE 80 8080 3306 443 22

CMD ["/usr/sbin/init"]
