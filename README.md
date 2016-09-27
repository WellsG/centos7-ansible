## centos7-ansible
This is used to build the basic images for ansible users.  

### * Build images
```
cd centos7-systemd/
docker build --rm -t centos7-systemd . 
cd ..
docker build --rm -t centos7-ansible .
```
```
[~/docker/dockerdev] $ sudo docker images
REPOSITORY                                        TAG                 IMAGE ID            CREATED             SIZE
centos7-ansible                                   latest              9c10b22cc3ef        53 minutes ago      447.6 MB
centos7-systemd                                   latest              2af0a25082ad        4 hours ago         196.7 MB
```

### * Run docker with systemd
```
sudo docker run --privileged -ti -v /sys/fs/cgroup:/sys/fs/cgroup:ro -p 80:80 centos7-ansible
```

### * Exec bash to get shell
```
sudo docker exec -it [CONTAINER_ID] /bin/bash
```

### * Test
run ansible inside container
```
ansible-playbook ansible-sample/roles/mysql/handlers/mysql.yml
```


### * REFs
https://hub.docker.com/_/centos/
http://jperrin.github.io/centos/2014/09/25/centos-docker-and-systemd/
