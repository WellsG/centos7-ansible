## centos7-ansible
This is used to build the basic images for ansible users.  

### * Run docker with systemd
sudo docker run --privileged -ti -v /sys/fs/cgroup:/sys/fs/cgroup:ro -p 80:80 centos7-ansible

### * Exec bash to get shell
sudo docker exec -it [CONTAINER_ID] /bin/bash

### * REFs
http://jperrin.github.io/centos/2014/09/25/centos-docker-and-systemd/
