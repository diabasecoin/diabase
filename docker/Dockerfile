FROM phusion/baseimage:bionic-1.0.0
LABEL maintainer="Diabase Developers <dev@diabase.org>"
LABEL description="Dockerised DashCore, built from Travis"

ARG USER_ID
ARG GROUP_ID

ENV HOME /diabase

# add user with specified (or default) user/group ids
ENV USER_ID ${USER_ID:-1000}
ENV GROUP_ID ${GROUP_ID:-1000}
RUN groupadd -g ${GROUP_ID} diabase
RUN useradd -u ${USER_ID} -g diabase -s /bin/bash -m -d /diabase diabase
RUN mkdir /diabase/.diabasecore
RUN chown diabase:diabase -R /diabase

COPY bin/* /usr/local/bin/

RUN chmod a+x /usr/local/bin/*

USER diabase

VOLUME ["/diabase"]

EXPOSE 9998 9999 19998 19999

WORKDIR /diabase
