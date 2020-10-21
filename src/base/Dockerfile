ARG JAVA_VERSION="8"

FROM azul/zulu-openjdk:${JAVA_VERSION}

MAINTAINER Mutlu Polatcan <mutlupolatcan@gmail.com>

ENV DRUID_USER_HOME="/home/druid"
ENV DRUID_HOME="${DRUID_USER_HOME}/druid"
ENV DRUID_CONF_DIR="${DRUID_HOME}/conf/druid"
ENV PATH=$PATH:${DRUID_HOME}/bin

ADD config_loader.sh ${DRUID_USER_HOME}/druid_config_loader.sh
ADD entrypoint.sh ${DRUID_USER_HOME}/entrypoint.sh

RUN apt-get update && \
    apt-get -y install --no-install-recommends python \
                                               wget \
                                               nano \
                                               less \
                                               curl \
                                               libfindbin-libs-perl && \
    rm -rf /var/lib/apt/lists/* && \
    addgroup druid && adduser --disabled-password --gecos "" --ingroup druid druid && \
    mkdir -p ${DRUID_HOME} ${DRUID_CONF_DIR} && \
    chown -R druid:druid ${DRUID_USER_HOME} && \
    chmod +x ${DRUID_USER_HOME}/druid_config_loader.sh ${DRUID_USER_HOME}/entrypoint.sh
