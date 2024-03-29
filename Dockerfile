# Dockerfile for java project

# build-stage-1
FROM maven:3.6-openjdk-17 as build
LABEL project="petclinic"
LABEL author="devops team"
RUN ls -al
RUN mvn package


# stage-2- run the application

FROM openjdk:17.0
EXPOSE 8080
COPY --from=build /spring-petclinic/target/spring-petclinic-2.7.3.jar /spring-petclinic-2.7.3.jar
CMD ["java", "-jar", "*.jar"]
