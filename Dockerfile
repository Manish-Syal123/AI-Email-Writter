# Stage 1: Build the application
FROM maven:3.9.6-eclipse-temurin-23 AS build
WORKDIR /app
COPY . .
RUN mvn clean package -DskipTests

# Stage 2: Run the application
<<<<<<< HEAD
FROM eclipse-temurin:23-jdk
=======
FROM eclipse-temurin:21-jdk
>>>>>>> e67dda8 (updated dockerfile to work with java 21)
WORKDIR /app
COPY --from=build /app/target/*.jar app.jar
ENTRYPOINT ["java", "-jar", "app.jar"]
