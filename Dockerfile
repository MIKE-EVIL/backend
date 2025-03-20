#
# Build stage
#
#
# Build stage
#
FROM maven:3.8.3-openjdk-17 AS build
COPY src /home/app/src
COPY pom.xml /home/app
RUN mvn -f /home/app/pom.xml clean package -DskipTests
EXPOSE 8080
ENTRYPOINT ["java","-jar","/home/app/target/springboot-test-demo-0.0.1-SNAPSHOT.jar"]

#docker build --tag "academiafullstackdemo:landing-v1" .
#docker run -p 8081:80 --name "demo-landings-dev" academiafullstackdemo:landig-v1

#docker-compose up -d
#docker-compose down -v