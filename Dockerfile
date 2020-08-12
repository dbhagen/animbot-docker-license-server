FROM alpine:latest

WORKDIR /opt/

ADD http://www.animbot.ca/download/rlm/animBot_RLM.zip animBot_RLM.zip
RUN apk add curl && \
    unzip animBot_RLM.zip && \
    mv animBot_RLM/linux ./rlm && \
    rm -rf animBot_RLM

VOLUME [ "/opt/rlm/licenses", "/opt/rlm/logs" ]

#CMD [ "/opt/rlm/init.d_script/rlm", "start" ]
CMD [ "/bin/sh" ]