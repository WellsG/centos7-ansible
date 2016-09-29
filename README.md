## centos7-ansible
This is used to build the basic images for ansible users.  

> * Build via docker-compose
```
cd centos7
sudo docker-compose build
```
```
[~/GitRepo/github/centos7-ansible/centos7] (master) $ sudo docker images
REPOSITORY                                        TAG                 IMAGE ID            CREATED             SIZE
centos7_ansible                                   latest              5b191cd8abec        20 seconds ago      469.2 MB
centos7_systemd                                   latest              8608b442190f        6 minutes ago       196.7 MB
```
start container:
```
sudo docker-compose run --service-ports ansible
```


> * Build images step by step <br>
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

### * Run JBoss EAP 
```
git clone https://github.com/WellsG/centos7-ansible
cd centos7-ansible/ansible-sample/
ansible-playbook -vvv playbooks/main.yml
```

### * REFs
[Centos](https://hub.docker.com/_/centos/)  <br>
[Centos systemd](http://jperrin.github.io/centos/2014/09/25/centos-docker-and-systemd/)  <br>
[Wildfly role](https://github.com/pinterb/bootstrap/tree/master/provisioning/ansible/roles/wildfly/install)  <br>
[Config JBEAP as Service](https://access.redhat.com/documentation/en-US/JBoss_Enterprise_Application_Platform/6.1/html/Installation_Guide/Install_JBoss_Enterprise_Application_Platform_6_Red_Hat_Enterprise_Linux_Service.html)  <br>
