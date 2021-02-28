FROM openjdk:8-jdk-alpine
#基于Java环境
VOLUME /tmp
ADD target/RemoteDebug-1.0.jar app.jar

#ENTRYPOINT ["java","-jar","app.jar"]
ENTRYPOINT ["java","-agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=8888","-jar","app.jar"]


