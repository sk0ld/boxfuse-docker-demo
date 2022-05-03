# boxfuse-docker-demo
Simple demo of docker usage to package and deploy boxfuse app
=========

Short info
------------
Tested on Ubuntu 20.04

Container with tomcat 9; with maven and boxfuse application for deployment of .war file by tomcat.

To install git & docker use:

```
apt update && apt install -y git docker.io
```

Cloning repository & preparing docker image:
```
git clone https://github.com/sk0ld/boxfuse-docker-demo.git

cd boxfuse-docker-demo/

docker build -t boxfuse-docker .
```

To check docker images:
```
docker images
```

To run docker container with boxfuse app:
```
docker run -itd -p 8080:8080 --name demo-boxfuse-app boxfuse-docker
```
To check docker processes:
```
docker ps
```
Output should be:
```
CONTAINER ID   IMAGE            COMMAND             CREATED          STATUS          PORTS                                       NAMES
5bc5cd6ccd29   boxfuse-docker   "catalina.sh run"   15 minutes ago   Up 15 minutes   0.0.0.0:8080->8080/tcp, :::8080->8080/tcp   demo-boxfuse-app
```

To access app via browser:
```
http://your_ip_or_hostname:8080/hello-1.0/
```
To stop container:
```
docker container stop demo-boxfuse-app
```

To remove all the images and containers:
```
docker stop $(docker ps -a -q)
docker rm $(docker ps -a -q)
docker rmi $(docker images -q)
```