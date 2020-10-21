ARG JAVA_VERSION="8"

FROM mpolatcan/druid:base-java${JAVA_VERSION}

MAINTAINER Mutlu Polatcan <mutlupolatcan@gmail.com>

ARG DRUID_VERSION="0.20.0"
ARG DRUID_DOWNLOAD_LINK="https://downloads.apache.org/druid/${DRUID_VERSION}/apache-druid-${DRUID_VERSION}-bin.tar.gz"

RUN wget ${DRUID_DOWNLOAD_LINK} && \
    tar -xvzf apache-druid-${DRUID_VERSION}-bin.tar.gz -C ${DRUID_USER_HOME} && \
    mv ${DRUID_USER_HOME}/apache-druid-${DRUID_VERSION}/* ${DRUID_HOME} && \
    rm -r apache-druid-${DRUID_VERSION}-bin.tar.gz ${DRUID_USER_HOME}/apache-druid-${DRUID_VERSION} && \
    rm -r ${DRUID_HOME}/conf && \
    mkdir -p ${DRUID_CONF_DIR} && \
    chown -R druid:druid ${DRUID_USER_HOME}

USER druid
WORKDIR ${DRUID_USER_HOME}
ENTRYPOINT ["./entrypoint.sh"]
