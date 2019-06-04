FROM openjdk:8-jdk
VOLUME /tmp

EXPOSE 9000
# EXPOSE 1099

ADD ./build/libs/helloworld-0.0.1.jar app.jar
ENTRYPOINT ["java", \
    "-Djava.security.egd=file:/dev/./urandom", \
    "-Dcom.sun.management.jmxremote", \
    "-Dcom.sun.management.jmxremote.port=1099", \
    "-Dcom.sun.management.jmxremote.rmi.port=1099", \
    "-Dcom.sun.management.jmxremote.local.only=false", \
    "-Dcom.sun.management.jmxremote.authenticate=false", \
    "-Dcom.sun.management.jmxremote.ssl=false", \
    "-Djava.rmi.server.hostname = localhost", \
    "-jar","/app.jar"]