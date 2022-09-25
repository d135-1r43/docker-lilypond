FROM ubuntu:bionic

RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* \
    && localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
ENV LANG en_US.utf8
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get -y install curl git wget
RUN wget https://lilypond.org/download/binaries/linux-64/lilypond-2.22.2-1.linux-64.sh && sh lilypond-2.22.2-1.linux-64.sh
