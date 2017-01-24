FROM mhart/alpine-node:6
#ARG buildDir=/opt/app

### build tools for native dependencies
#RUN apk add --update ca-certificates make gcc g++ python git libreoffice ffmpeg librsvg cairo openssh
RUN apk add --update git openssh
#RUN npm install grunt bower -g
### graphicsmagick
RUN echo "http://dl-cdn.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories;
#RUN apk add --update graphicsmagick && rm -rf /var/cache/apk/*

RUN adduser -S plek
#ADD . /plek
COPY install.sh /

RUN mkdir -p /app
RUN chown -R plek /app

USER plek

#RUN git clone ssh://git@gitlab.ilumy.com:2222/ilumy/plek.git -b master

#RUN mkdir -p ~/.ssh/ && ssh-keyscan -H gitlab.ilumy.com >> ~/.ssh/known_hosts

# when we change our application's nodejs dependencies:
#ADD package.json /tmp/package.json
#RUN cd /tmp && npm install
#RUN mkdir -p /plek && cp -a /tmp/node_modules /plek/

#WORKDIR /plek

#RUN bower install
#RUN grunt basic


#EXPOSE 1337
ENTRYPOINT ["/install.sh"]
#CMD ["npm", "start"]

