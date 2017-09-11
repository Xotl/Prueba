FROM node:8

ENV HOME_APP "/usr/src"

WORKDIR ${HOME_APP}

ADD ./package.json ${HOME_APP}/package.json
RUN npm install
ADD . ${HOME_APP}/


EXPOSE 1337
CMD ['npm', 'start']
