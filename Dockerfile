FROM openjdk:17-jdk-alpine
#CMD ["./gradlew", "clean", "bootJar"]
ARG jar_file
COPY ${jar_file} app.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","/app.jar" ]