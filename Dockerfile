FROM openjdk:8

MAINTAINER Efthymios Theodorakopoulos (etheodorako@di.uoa.gr)

RUN apt-get update
RUN apt-get install -y maven

# exareme
RUN apt-get -y install git
RUN git clone https://github.com/madgik/ExaSpark.git /root/exaspark-src
WORKDIR /root/exaspark-src
RUN mvn clean package

WORKDIR /root/exaspark-src/target

EXPOSE 9090

CMD ["java","-jar","ExtendedSpark-0.0.1-SNAPSHOT.jar"]
#CMD ["java","-jar","ExtendedSpark-0.0.1-SNAPSHOT-jar-with-dependencies.jar"]
#CMD ["java","-cp","ExtendedSpark-0.0.1-SNAPSHOT-jar-with-dependencies.jar","madgik.exaSpark.ExaremeSpark"]
