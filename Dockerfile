# Stage 1: Build the Spring Boot application (using Maven)
FROM eclipse-temurin:24-jdk AS builder
WORKDIR /app
COPY .mvn .mvn
COPY mvnw pom.xml ./
RUN ./mvnw dependency:go-offline -B
COPY src src
RUN ./mvnw package -DskipTests

# Stage 2: Create the final runtime image
FROM eclipse-temurin:24-jdk
WORKDIR /app
COPY --from=builder /app/target/shophubbackend-0.0.1-SNAPSHOT.jar .
EXPOSE 8082
ENTRYPOINT ["java", "-jar", "/app/shophubbackend-0.0.1-SNAPSHOT.jar"]
