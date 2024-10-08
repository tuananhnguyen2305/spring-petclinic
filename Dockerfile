FROM jenkins/jenkins:lts

LABEL maintainer="anhnt@falcongames.com"

USER root

EXPOSE 8088 50000

COPY /target/spring-petclinic-1.5.1.jar /home/spring-petclinic-1.5.1.jar

CMD ["java","-jar","spring-petclinic-1.5.1.jar"]
