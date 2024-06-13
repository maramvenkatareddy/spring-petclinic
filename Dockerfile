FROM maven:3.6.3-openjdk-17 as build
COPY / ./
RUN mvn package
CMD ["java", "-jar", "/spring-petclinic-2.7.3.jar"]
