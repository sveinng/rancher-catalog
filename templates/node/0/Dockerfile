FROM node:boron

ADD installNode.sh /installNode.sh

RUN mkdir /app
RUN npm set progress=false
RUN npm install grunt bower pm2 -g

CMD bash /installNode.sh