FROM openjdk:11

WORKDIR /app

COPY pom.xml /pom.xml
COPY src /src

RUN mvn clean package

COPY target/*.jar app.jar

CMD ["java", "-jar", "/app.jar"]

EXPOSE 8080
