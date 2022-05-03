FROM tomcat:9.0-jre8-alpine
RUN apk update && apk --no-cache add openjdk8 --repository=http://dl-cdn.alpinelinux.org/alpine/edge/community
RUN apk add git maven
WORKDIR /usr/share/app-src
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git ./
RUN mvn package -DskipTest && cp ./target/*.war /usr/local/tomcat/webapps