FROM cypress/browsers:node16.14.0-chrome99-ff97

RUN apt update \
 && apt -y install openjdk-17-jre openjdk-17-jdk \
 && apt-cache policy openjdk-17-jre openjdk-17-jdk

RUN wget https://archive.apache.org/dist/maven/maven-3/3.8.6/binaries/apache-maven-3.8.6-bin.tar.gz \
 && tar -xvf apache-maven-*-bin.tar.gz \
 && mv apache-maven-3.8.6 /usr/share/maven \
 && echo 'export PATH="$PATH:/usr/share/maven"' >> ~/.bashrc \
 && echo 'export PATH="$PATH:/usr/share/maven/bin"' >> ~/.bashrc
