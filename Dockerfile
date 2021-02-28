FROM openjdk:8-jdk-alpine
#基于Java环境
VOLUME /tmp
ADD target/RemoteDebug-1.0.jar app.jar
#上面target/app.jar和你打包的jar包名字一致，第二个app.jar和下面的/app.jar名字保持一致，为了方便我都使用一样的，这条一定要有，不然做的容器开启不了（到处是坑）
#ENTRYPOINT ["java","-jar","app.jar"]
ENTRYPOINT ["java","-agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=8888","-jar","app.jar"]


