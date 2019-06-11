FROM centos:7


RUN yum update -y && \
yum install -y wget && \
yum install -y which && \
yum install -y unzip && \
yum install -y java-1.8.0-openjdk java-1.8.0-openjdk-devel && \
yum install -y net-tools&& \
yum clean all 

RUN export JAVA_HOME="/usr"
COPY IDM-eval-6.5.0.1.zip /root/
RUN unzip /root/IDM-eval-6.5.0.1.zip -d /root/
RUN rm /root/IDM-eval-6.5.0.1.zip
RUN sed -i "s/=localhost/=$(hostname -i)/g" "/root/openidm/resolver/boot.properties"

# Set environment variables.
ENV HOME /root

# Define working directory.
WORKDIR /root

# Define default command.
EXPOSE 8080


