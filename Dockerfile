FROM java:openjdk-6b38-jdk
MAINTAINER longmanplus

#dependencies
RUN apt-get update
RUN apt-get upgrade -y

#create user
RUN useradd -ms /bin/bash user01
USER user01
WORKDIR /home/user01

#specific tasks
COPY GroIMP-1.5.zip /home/user01/
RUN unzip GroIMP-1.5.zip
ENV GROIMP_ROOT=/home/user01/GroIMP-1.5/app/
