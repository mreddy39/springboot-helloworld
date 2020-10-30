FROM dockerfile/java:oracle-java8

ENV MAVEN_VERSION 3.2.5

ENV MAVEN_HOME /usr/share/maven

COPY . /data/springboot-helloworld
WORKDIR /data/springboot-helloworld

RUN ["mvn", "clean", "install"]

EXPOSE 8080

CMD ["java", "-jar", "target/helloworld-0.0.1-SNAPSHOT.jar"]
