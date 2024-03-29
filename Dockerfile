FROM maven:3.6.3-openjdk-17 as build
RUN git clone https://github.com/maramvenkatareddy/spring-petclinic.git && \
    cd spring-petclinic && \
    mvn package
CMD ["java", "-jar", "/spring-petclinic-2.7.3.jar"]
