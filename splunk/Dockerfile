FROM splunk/splunk:8.0-debian

LABEL maintainer="tjveil@gmail.com"

RUN sudo apt-get update -y && \
    sudo apt-get install -y unzip && \
    mkdir -p /tmp/crdb && \
    chmod -R 777 /tmp/crdb

ADD *.zip /tmp/crdb

RUN unzip -q /tmp/crdb/*.zip -d /tmp/crdb && \
    rm -rf /tmp/crdb/*.zip && \
    find /tmp/crdb -type f ! -name '*.log' -delete && \
    find /tmp/crdb -type d -empty -delete && \
    find /tmp/crdb -type f -name '*.log' -exec touch -a -m {} +

ADD conf/authorize.conf /opt/splunk/etc/system/local/authorize.conf
ADD conf/fields.conf /opt/splunk/etc/system/local/fields.conf
ADD conf/indexes.conf /opt/splunk/etc/system/local/indexes.conf
ADD conf/inputs.conf /opt/splunk/etc/system/local/inputs.conf
ADD conf/props.conf /opt/splunk/etc/system/local/props.conf
ADD conf/ui-prefs.conf /opt/splunk/etc/system/local/ui-prefs.conf
ADD conf/ui-tour.conf /opt/splunk/etc/system/local/ui-tour.conf
ADD conf/viewstates.conf /opt/splunk/etc/system/local/viewstates.conf

ADD conf/dashboard.xml /opt/splunk/etc/apps/search/local/data/ui/views/dashboard.xml
ADD conf/user-prefs.conf /opt/splunk/etc/users/admin/user-prefs/local/user-prefs.conf