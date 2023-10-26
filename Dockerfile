# Use a base image with Java, Helm, AWS CLI, and Maven preinstalled
FROM openjdk:11-jdk-slim

# Install Helm
RUN curl -LO https://get.helm.sh/helm-v3.7.0-linux-amd64.tar.gz && \
    tar -zxvf helm-v3.7.0-linux-amd64.tar.gz && \
    mv linux-amd64/helm /usr/local/bin/ && \
    rm -rf helm-v3.7.0-linux-amd64.tar.gz

# Install AWS CLI
RUN apt-get update && apt-get install -y awscli && apt-get clean

# Install Maven
RUN apt-get install -y maven && apt-get clean

# Create a Jenkins user and switch to it
RUN useradd -m -d /var/jenkins -s /bin/bash jenkins
USER jenkins

# Set the working directory
WORKDIR /var/jenkins

CMD ["/bin/bash"]