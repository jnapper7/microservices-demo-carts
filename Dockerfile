FROM eclipse-temurin:11
WORKDIR /usr/src/app

ARG BUILD_DATE
ARG BUILD_VERSION
ARG COMMIT

COPY ./target/*.jar ./app.jar
EXPOSE 80
ENTRYPOINT ["java","-jar","./app.jar"]
