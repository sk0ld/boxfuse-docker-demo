FROM ubuntu:20.04
ENV TZ=Europe/Moscow
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN apt update
RUN apt install -y git default-jdk
RUN apt install -y maven tomcat9
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git
RUN cd ./boxfuse-sample-java-war-hello/  && mvn package
RUN cd ./boxfuse-sample-java-war-hello/target/ && cp hello-1.0.war /var/lib/tomcat9/webapps/