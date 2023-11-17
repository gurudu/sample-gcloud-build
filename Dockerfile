FROM openjdk:17-jdk-alpine
CMD ["./gradlew", "clean", "bootJar"]
COPY  ./build/libs/demo-0.0.1-SNAPSHOT.jar ./demo/app.jar
WORKDIR /demo
EXPOSE 8080
ENTRYPOINT ["java","-jar","app.jar" ]