FROM openjdk:8
VOLUME /tmp
RUN mkdir -p /config
COPY config/ /config
EXPOSE 8888
ADD ./target/microservicios-config-server-0.0.1-SNAPSHOT.jar config-server.jar
ENTRYPOINT ["java","-jar","/config-server.jar"]