FROM splunk/splunk:latest

LABEL maintainer="tjveil@gmail.com"

RUN mkdir -p /tmp/cockroach-logs
RUN chmod -R 777 /tmp/cockroach-logs

ADD inputs.conf /opt/splunk/etc/system/local/inputs.conf
ADD props.conf /opt/splunk/etc/system/local/props.conf
ADD indexes.conf /opt/splunk/etc/system/local/indexes.conf
ADD ui-tour.conf /opt/splunk/etc/system/local/ui-tour.conf
ADD authorize.conf /opt/splunk/etc/system/local/authorize.conf
ADD ui-prefs.conf /opt/splunk/etc/system/local/ui-prefs.conf