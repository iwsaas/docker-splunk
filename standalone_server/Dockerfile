FROM iwsaas/centos
MAINTAINER Henry Huang <henry.s.huang@gmail.com>

ENV JENKINS_HOME /opt/splunk
ENV SPLUNK_VERSION 6.2.3
ENV SPLUNK_BUILD 264376

RUN yum -y update; yum clean all
RUN yum install -y http://download.splunk.com/products/splunk/releases/\
$SPLUNK_VERSION/splunk/linux/\
splunk-$SPLUNK_VERSION-$SPLUNK_BUILD-linux-2.6-x86_64.rpm; yum clean all

EXPOSE 8000 8089 9997

ADD splunk-start.sh /splunk-start.sh
RUN chmod -v +x /splunk-start.sh

CMD [ "/splunk-start.sh" ]
