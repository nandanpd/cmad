
FROM maven:latest
MAINTAINER Nandan Devarajulu

WORKDIR /code

ADD .  /code/

RUN mvn dependency:resolve
RUN mvn verify
RUN mvn clean install

EXPOSE 8080

CMD java -jar target/cmad-advanced-staging-demo-fat.jar