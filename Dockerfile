FROM openjdk:21
EXPOSE 8080
ADD target/helloworld-demo.jar helloworld-demo.jar
ENTRYPOINT ["java", "-jar", "helloworld-demo.jar"]
