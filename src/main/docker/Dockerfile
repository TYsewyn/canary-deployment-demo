FROM openjdk:8-jre-alpine

VOLUME /tmp

COPY src/main/docker/run.sh run.sh
RUN sh -c 'touch /run.sh && chmod +x /run.sh'

COPY build/libs/canary-deployment-demo.jar app.jar
RUN sh -c 'touch /app.jar'

CMD "/run.sh"