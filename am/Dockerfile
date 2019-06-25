FROM centos:7


RUN yum update -y && \
yum install -y wget && \
yum install -y which && \
yum install -y unzip && \
yum install -y java-1.8.0-openjdk java-1.8.0-openjdk-devel && \
yum clean all && \
yum install -y net-tools && wget http://mirrors.standaloneinstaller.com/apache/tomcat/tomcat-8/v8.5.42/bin/apache-tomcat-8.5.42.tar.gz && \ 
mkdir /root/tomcat && tar xvf apache-tomcat-8*tar.gz -C /root/tomcat --strip-components=1

EXPOSE 80

COPY  AM-6.5.1.zip /root/
COPY sample.config /root/
RUN unzip /root/AM-6.5.1.zip -d /root/
RUN export JAVA_HOME="/usr"
RUN unzip -o /root/openam/AM-SSOConfiguratorTools-5.1.2.3.zip -d /root/openam/ 
RUN cp /root/openam/AM-6.5.1.war /root/tomcat/webapps/openam.war


#RUN echo $(hostname -f) && echo $(hostname -i) && sed -i "s/hostname/$(hostname -f)/g" "/root/sample.config" && sed -i "s/cookie/$(hostname -f | awk -F '.' '{print $2"."$3}')/g" "/root/sample.config" && echo $(hostname -i)" "$(hostname -f) >> /etc/hosts && echo $(hostname -f) && echo $(hostname -i)  && java -jar /root/openam/openam-configurator-tool-14.1.2.3.jar -f /root/sample.config

# Set environment variables.
ENV HOME /root

# Define working directory.
WORKDIR /root

# Define default command.
CMD ["/bin/bash"]


