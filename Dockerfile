FROM jenkins/jenkins:lts

LABEL maintainer="anhnt@falcongames.com"

USER root

EXPOSE 8080 50000

COPY /target/spring-petclinic-1.5.1.jar /home/spring-petclinic-1.5.1.jar

CMD ["java","-jar","spring-petclinic-1.5.1.jar"]

RUN curl -fsSLO https://get.docker.com/builds/Linux/x86_64/docker-17.04.0-ce.tgz \
  && tar xzvf docker-17.04.0-ce.tgz \
  && mv docker/docker /usr/local/bin \
  && rm -r docker docker-17.04.0-ce.tgz
