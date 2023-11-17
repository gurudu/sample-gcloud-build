FROM openjdk:17-jdk-alpine
CMD ["./gradlew", "clean", "bootJar"]
ARG jar_file=./build/libs/*.jar
COPY ${jar_file} ./demo/app.jar
WORKDIR /demo
EXPOSE 8080
ENTRYPOINT ["java","-jar","app.jar" ]