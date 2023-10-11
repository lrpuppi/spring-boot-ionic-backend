# spring-boot-ionic-backend


####Docker instructions

##### Build native platform
 
    docker build --build-arg JAR_FILE=target/*.jar -t user/image:arm64 .

<p> Note: Update jar file with MAVEN CLEAN/PACKAGE before building Docker image</p>

##### Build emulated platform (buildx)
    
    docker buildx build --build-arg JAR_FILE=target/*.jar --platform linux/arm64/v8 -t user/image:arm64 --push .