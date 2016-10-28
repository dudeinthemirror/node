FROM node:6.9.1

MAINTAINER dudeinthemirror

COPY ./.bashrc /root/.bashrc
COPY ./.vimrc /root/.vimrc

RUN apt-key adv --keyserver pgp.mit.edu --recv D101F7899D41F3C3
RUN echo "deb http://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN apt-get update && apt-get install yarn=0.16.1-1 && apt-get clean

RUN curl -L https://npmjs.org/install.sh | sh
RUN npm install -g npm@3.10.7
RUN echo "Y" | apt-get install vim-tiny
