FROM jenkins/jenkins:lts

LABEL maintainer="anhnt@falcongames.com"

USER root

RUN apt-get update && \
    apt-get install -y apt-transport-https ca-certificates curl gnupg2 software-properties-common && \
    curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add - && \
    add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs) stable" && \
    apt-get update && \
    apt-get install -y docker-ce-cli && \
    apt-get clean

# Switch back to Jenkins user
USER jenkins

# Expose ports
EXPOSE 8085 50000

COPY /target/spring-petclinic-1.5.1.jar /home/spring-petclinic-1.5.1.jar

CMD ["java","-jar","spring-petclinic-1.5.1.jar"]

