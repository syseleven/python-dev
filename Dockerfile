#FROM python:2.7.6   # doesn't exist anymore
FROM ubuntu:14.04

LABEL maintainer "Olaf Klischat <o.klischat@syseleven.de>"

# packages from https://gitlab.syseleven.de/devops/smith-infrastructure/blob/master/smithstack.vpstest-infra/roles/python-ubuntu1404/tasks/main.yml
RUN locale-gen en_US.UTF-8; locale-gen de_DE.UTF-8; \
    apt-get update && apt-get install -y make gcc python-virtualenv python-dev python-pip git libffi-dev libssl-dev

ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8
ENV USER root

COPY ./gitlab-auth/* /root/.ssh/
