FROM openjdk:17-jdk-slim AS builder
COPY ./ /tmp
WORKDIR /tmp
RUN ./gradlew clean bootJar

FROM openjdk:17-jdk-slim
COPY --from=builder /tmp/build/libs/spring-boot-k8s.jar /app/app.jar
WORKDIR /app
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "./app.jar"]