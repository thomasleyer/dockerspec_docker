FROM ruby:latest

LABEL maintainer="selecticon@googlemail.com"
LABEL description="dockerspec_docker image - make use of Dockerspec for testing your images"

RUN gem install dockerspec

WORKDIR /spec
