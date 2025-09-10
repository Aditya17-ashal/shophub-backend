# Stage 1: Build the Spring Boot application (using Maven)
FROM eclipse-temurin:24-jdk AS builder
WORKDIR /app

COPY .mvn .mvn
COPY mvnw pom.xml ./
# CRITICAL FIX: Add execute permissions for the Maven wrapper
RUN chmod +x mvnw

# Download dependencies (this layer is cached unless pom.xml changes)
RUN ./mvnw dependency:go-offline -B

# Copy source code and build the application
COPY src src
RUN ./mvnw package -DskipTests

# ----------------------------------------------------------------

# Stage 2: Create the final, optimized runtime image
# IMPROVEMENT: Use a smaller JRE image instead of the full JDK
FROM eclipse-temurin:24-jre
WORKDIR /app

# IMPROVEMENT: Create a non-root user for better security
RUN addgroup --system appgroup && adduser --system --ingroup appgroup appuser
USER appuser

# Copy only the final application JAR from the builder stage
COPY --from=builder /app/target/shophubbackend-0.0.1-SNAPSHOT.jar .

# Expose the application port
EXPOSE 8082

# Set the entrypoint to run the application
ENTRYPOINT ["java", "-jar", "/app/shophubbackend-0.0.1-SNAPSHOT.jar"]