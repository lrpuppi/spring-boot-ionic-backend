FROM arm64v8/eclipse-temurin:17-jdk-jammy
VOLUME /tmp
WORKDIR /
ARG JAR_FILE
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]