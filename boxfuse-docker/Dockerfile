FROM ubuntu:20.04
RUN apt update
RUN apt install -y git maven tomcat9
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git
RUN cd ./boxfuse-sample-java-war-hello/  && mvn package
RUN cp ./target/hello-1.0.war /var/lib/tomcat9/webapps/