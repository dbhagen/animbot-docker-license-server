FROM ubuntu:bionic-20200713

WORKDIR /opt/

ADD http://www.animbot.ca/download/rlm/animBot_RLM.zip animBot_RLM.zip
RUN apt-get update -y && \
    apt-get upgrade -y && \
    apt-get dist-upgrade -y && \
    apt-get -y autoremove && \
    apt-get clean && \
    apt-get install unzip -y && \
    unzip animBot_RLM.zip && \
    mv animBot_RLM/linux ./rlm && \
    rm -rf animBot_RLM __MACOSX animBot_RLM.zip

COPY startscript.sh /opt/startscript.sh

VOLUME [ "/opt/rlm/licenses", "/opt/rlm/logs" ]

CMD [ "/opt/startscript.sh" ]