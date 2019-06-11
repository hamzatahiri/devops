FROM centos:7


RUN yum update -y && \
yum install -y wget && \
yum install -y which && \
yum install -y unzip && \
yum install -y java-1.8.0-openjdk java-1.8.0-openjdk-devel && \
yum clean all && \
yum install -y net-tools&& \
cd /root/


COPY users.ldif /root/
COPY  DS-eval-6.5.1.zip /root/
RUN unzip /root/DS-eval-6.5.1.zip -d /root/
RUN export JAVA_HOME="/usr"

RUN hostname=$(hostname)  && \
/root/opendj/setup directory-server \
          --acceptLicense  \
          --instancePath /root/opendj \
          --rootUserDn cn=Directory\ Manager \
          --rootUserPassword cangetindj \
          --monitorUserDn uid=Monitor \
          --monitorUserPassword cangetindj \
          --hostname $hostname \
          --adminConnectorPort 4444 \
          --ldapPort 2389 \
          --enableStartTls \
          --ldapsPort 2636 \
          --ldifFile /root/users.ldif \
          --baseDn dc=wimpi,dc=net


#RUN cd openidm
#RUN sed -i "s/localhost/$(hostname -i)/g" "../openidm/resolver/boot.properties"

# Set environment variables.
ENV HOME /root

# Define working directory.
WORKDIR /root

# Define default command.
CMD ["/bin/bash"]

EXPOSE 2389


