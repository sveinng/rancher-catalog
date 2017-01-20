FROM mhart/alpine-node:6
#ARG buildDir=/opt/app

### build tools for native dependencies
RUN apk add --update ca-certificates make gcc g++ python git libreoffice ffmpeg librsvg cairo openssh
RUN npm install grunt bower -g
### graphicsmagick
RUN echo "http://dl-cdn.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories;
#RUN apk add --update graphicsmagick && rm -rf /var/cache/apk/*

RUN adduser -S plek
ADD . /plek

RUN mkdir -p /plek
RUN chown -R plek /plek

USER plek
RUN mkdir -p ~/.ssh/ && ssh-keyscan -H gitlab.ilumy.com >> ~/.ssh/known_hosts

# when we change our application's nodejs dependencies:
ADD package.json /tmp/package.json
RUN cd /tmp && npm install
RUN mkdir -p /plek && cp -a /tmp/node_modules /plek/

WORKDIR /plek

RUN bower install
RUN grunt basic


EXPOSE 1337

CMD ["npm", "start"]

