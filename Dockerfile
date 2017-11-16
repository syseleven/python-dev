FROM python:latest

LABEL maintainer "Olaf Klischat <o.klischat@syseleven.de>"

COPY ./gitlab-auth/* /root/.ssh/
