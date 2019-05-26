FROM nssmmn/r-base:v0.3.0

LABEL maintainer="Nassim Kaddour <nssmmn@gmail.com>"
LABEL version="0.4.0"

RUN apt-get update

RUN apt-get install -y curl

RUN curl -o jdk-8.deb https://cdn.azul.com/zulu/bin/zulu8.38.0.13-ca-jdk8.0.212-linux_amd64.deb 
RUN dpkg -i jdk-8.deb
RUN rm jdk-8.deb

RUN rm /usr/lib/jvm/default-java
RUN ln -s /usr/lib/jvm/zulu-8-amd64 /usr/lib/jvm/default-java

RUN R CMD javareconf

RUN install2.r rJava
RUN install2.r mailR

CMD R
