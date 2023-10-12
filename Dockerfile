FROM arm64v8/eclipse-temurin:8-jdk
#FROM amd64/eclipse-temurin:8-jdk
VOLUME /tmp
WORKDIR /
ARG JAR_FILE
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]