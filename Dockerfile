FROM fabric8/java-alpine-openjdk8-jre
COPY target/fakesmtp-web-0.2.1-jar-with-dependencies.jar /opt/fakesmtp-web.jar
VOLUME ["/var/mail"]
WORKDIR /opt
EXPOSE 2525
EXPOSE 8080
CMD java -jar fakesmtp-web.jar --mailBindAddress 0.0.0.0 --mailPort 2525 --mailFolder /var/mail --webBindAddress 0.0.0.0 --webPort 8080
