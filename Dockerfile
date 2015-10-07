#Base Dockerfile Test
FROM debian:wheezy

#install necessary requirements
RUN apt-get update
RUN apt-get upgrade -y && \
      apt-get install -y sudo \
                            git \
                            curl \
                            wget \
                            build-essential

#Get node package
RUN curl -sL https://deb.nodesource.com/setup_0.12 | bash -
# Then install with:
RUN apt-get install -y nodejs

#setup NPM dependencies

##get gCloud SDK
# Need to have authentication?

