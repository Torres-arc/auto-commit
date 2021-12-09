FROM centos:centos7

ARG prom_rabbitmq_exporter_url=https://github.com/deadtrickster/prometheus_rabbitmq_exporter/releases/download/v3.7.9.1
COPY rabbitmq.repo /etc/yum.repos.d/rabbitmq.repo

RUN \
  yum install -y epel-release \
  && yum install -y centos-release-openstack-train \
  && yum install -y \
     curl \
     expect \
     haproxy \
     ipset \
     java \
     keepalived \
     mariadb-backup \
     mariadb-client \
     mariadb-server-galera \
     rabbitmq-server-3.7.10 \
     redis \
     socat \
     sudo \
     tomcat \
     tomcat-admin-webapps \
     which \
     ipmitool \
     openssh-clients \
  && yum clean all && rm -rf /var/cache/yum

RUN \
  rm -rf /var/lib/rabbitmq/* \
  && mkdir -p /usr/lib/rabbitmq/plugins \
  && curl -sSL ${prom_rabbitmq_exporter_url}/accept-0.3.5.ez -o /usr/lib/rabbitmq/plugins/accept-0.3.5.ez \
  && curl -sSL ${prom_rabbitmq_exporter_url}/prometheus-4.3.0.ez -o /usr/lib/rabbitmq/plugins/prometheus-4.3.0.ez \
  && curl -sSL ${prom_rabbitmq_exporter_url}/prometheus_cowboy-0.1.7.ez -o /usr/lib/rabbitmq/plugins/prometheus_cowboy-0.1.7.ez \
  && curl -sSL ${prom_rabbitmq_exporter_url}/prometheus_httpd-2.1.10.ez -o /usr/lib/rabbitmq/plugins/prometheus_httpd-2.1.10.ez \
  && curl -sSL ${prom_rabbitmq_exporter_url}/prometheus_rabbitmq_exporter-3.7.9.1.ez -o /usr/lib/rabbitmq/plugins/prometheus_rabbitmq_exporter-3.7.9.1.ez \
  && /usr/lib/rabbitmq/bin/rabbitmq-plugins enable --offline \
       rabbitmq_management prometheus_rabbitmq_exporter

RUN curl -sSL https://downloads.mariadb.com/Connectors/java/connector-java-2.2.6/mariadb-java-client-2.2.6.jar -o  /usr/share/tomcat/lib/mariadb-java-client-2.2.6.jar
