FROM openjdk:17-jdk-alpine
CMD ["./gradlew", "clean", "bootJar"]
COPY  --from=build ./build/libs/*.jar ./demo/app.jar
WORKDIR /demo
EXPOSE 8080
ENTRYPOINT ["java","-jar","app.jar" ]