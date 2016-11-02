FROM java:openjdk-6b38-jdk
MAINTAINER quanteek

#dependencies
RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y unzip
RUN apt-get install -y ant
RUN apt-get install -y xsltproc

#create user
RUN useradd -ms /bin/bash user01
USER user01
WORKDIR /home/user01

#specific tasks
COPY GroIMP-1.4.2-src.zip /home/user01/
RUN unzip GroIMP-1.4.2-src.zip
WORKDIR /home/user01/GroIMP-1.4.2/Build
RUN ant
ENV GROIMP_ROOT=/home/user01/GroIMP-1.4.2/app/
