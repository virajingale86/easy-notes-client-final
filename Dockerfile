FROM openjdk:8-jdk-alpine
VOLUME /tmp
ADD ./target/easy-notes-0.0.1-SNAPSHOT.jar easy-notes.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/easy-notes.jar"]