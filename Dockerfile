FROM ruby:latest

LABEL maintainer="selecticon@googlemail.com"
LABEL description="dockerspec_docker image - make use of Dockerspec for testing your images"

RUN curl -o /tmp/docker.tgz  https://download.docker.com/linux/static/stable/x86_64/docker-19.03.2.tgz && \
    tar --extract --file /tmp/docker.tgz --strip-components 1 --directory /usr/local/bin/ && \
    gem install dockerspec

WORKDIR /spec
