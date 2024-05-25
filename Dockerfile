FROM cypress/browsers:node-16.18.1-chrome-110.0.5481.96-1-ff-109.0-edge-110.0.1587.41-1
LABEL maintainer="WebSight Team <https://www.websight.io/>"

ARG MAVEN_VERSION=3.8.6
ARG MAVEN_DOWNLOAD_SHA512=f790857f3b1f90ae8d16281f902c689e4f136ebe584aba45e4b1fa66c80cba826d3e0e52fdd04ed44b4c66f6d3fe3584a057c26dfcac544a60b301e6d0f91c26

# https://linux.debian.bugs.dist.narkive.com/mPcDlYo6/bug-863199-error-creating-symbolic-link-usr-share-man-man1-rmid-1-gz-dpkg-tmp
RUN mkdir -p /usr/share/man/man1

RUN apt --allow-unauthenticated --allow-insecure-repositories update \
    && apt -y install openjdk-17-jre openjdk-17-jdk git unzip \
    && rm -rf /var/lib/apt/lists/* \
    && apt-get clean

RUN wget https://archive.apache.org/dist/maven/maven-3/${MAVEN_VERSION}/binaries/apache-maven-${MAVEN_VERSION}-bin.tar.gz -P /tmp \
    && echo "${MAVEN_DOWNLOAD_SHA512}  /tmp/apache-maven-${MAVEN_VERSION}-bin.tar.gz" | sha512sum -c - \
    && tar -xvf /tmp/apache-maven-*-bin.tar.gz -C /opt \
    && ln -s /opt/apache-maven-${MAVEN_VERSION} /opt/maven \
    && rm -rf /tmp/apache-maven-*-bin.tar.gz

ENV JAVA_HOME=/usr/lib/jvm/java-17-openjdk-amd64
ENV M2_HOME=/opt/maven
ENV MAVEN_HOME=/opt/maven
ENV PATH=/opt/maven/bin:${PATH}
