FROM openjdk:17-jdk-alpine
CMD ["./gradlew", "clean", "bootJar"]
ARG jar_file=JAR_FILE_MUST_BE_SPECIFIED_AS_BUILD_ARG
COPY ${jar_file} app.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","/app.jar" ]