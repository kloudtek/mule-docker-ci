FROM maven:3.5-jdk-8-slim

COPY mvn-init.sh /usr/bin/mvn-init
RUN chmod +x /usr/bin/mvn-init