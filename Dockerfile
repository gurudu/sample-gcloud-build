FROM openjdk:17-jdk-alpine
CMD ["./gradlew", "clean", "bootJar"]
ARG JAR_FILE
COPY ${JAR_FILE} app.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","/app.jar" ]