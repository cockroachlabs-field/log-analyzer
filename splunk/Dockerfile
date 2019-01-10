FROM splunk/splunk:latest

LABEL maintainer="tjveil@gmail.com"

RUN mkdir -p /tmp/cockroach-batch
RUN chmod -R 777 /tmp/cockroach-batch

RUN mkdir -p /tmp/cockroach-monitor
RUN chmod -R 777 /tmp/cockroach-monitor

ADD test.log /tmp/cockroach-monitor/test.log


ADD datetime.xml /opt/splunk/etc/system/local/datetime.xml
ADD inputs.conf /opt/splunk/etc/system/local/inputs.conf
ADD props.conf /opt/splunk/etc/system/local/props.conf
ADD indexes.conf /opt/splunk/etc/system/local/indexes.conf
ADD ui-tour.conf /opt/splunk/etc/system/local/ui-tour.conf
ADD authorize.conf /opt/splunk/etc/system/local/authorize.conf
ADD ui-prefs.conf /opt/splunk/etc/system/local/ui-prefs.conf