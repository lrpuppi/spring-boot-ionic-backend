# spring-boot-ionic-backend

[![Docker Build/Publish Image](https://github.com/lrpuppi/spring-boot-ionic-backend/actions/workflows/docker-publish.yml/badge.svg)](https://github.com/lrpuppi/spring-boot-ionic-backend/actions/workflows/docker-publish.yml)


#### Docker instructions

##### Build native platform
 
    docker build --build-arg JAR_FILE=target/*.jar -t user/image:tag .

<p> Note: Update jar file with MAVEN CLEAN/PACKAGE before building Docker image</p>

##### Build emulated platform (buildx)
    
    docker buildx build --build-arg JAR_FILE=target/*.jar --platform linux/arm64/v8 -t user/image:tag --push .

##### Run Image

    docker run -d -p outside_port:inside_port user/image:tag
    