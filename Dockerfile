# Use the official Jenkins LTS base image
FROM jenkins/jenkins:lts

# Switch to the root user to install packages
USER root

# Install Docker client
RUN curl -fsSL https://download.docker.com/linux/static/stable/x86_64/docker-20.10.9.tgz | tar xzvf - --strip-components=1 -C /usr/local/bin/ docker/docker

# Switch back to the Jenkins user
#USER jenkins

# Expose Jenkins port
EXPOSE 8081

# Jenkins home directory volume
#VOLUME /var/jenkins_home
