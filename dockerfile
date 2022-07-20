FROM openjdk:8
EXPOSE 8080
ADD ./my-app/target/my-app-1.0-SNAPSHOT.jar  my-app-1.0-SNAPSHOT.jar 
RUN mv my-app-1.0-SNAPSHOT.jar docker_jenkins.jar
ENTRYPOINT ["java", "-cp","docker_jenkins.jar","com.mycompany.app.App"]