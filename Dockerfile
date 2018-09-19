FROM maven:3.5-jdk-8-slim

COPY setup-image.sh /usr/bin/setup-image
RUN chmod +x /usr/bin/setup-image