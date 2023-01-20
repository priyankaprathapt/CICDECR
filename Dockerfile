FROM adoptopenjdk/openjdk14:alpine-slim
COPY target/StudentECR-0.0.1-SNAPSHOT.jar StudentECR-0.0.1-SNAPSHOT.jar
EXPOSE 8080
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom", "-jar", "StudentECR-0.0.1-SNAPSHOT.jar"]
