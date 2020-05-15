FROM node:latest

WORKDIR /usr/src/app

RUN apt-get update
RUN apt-get install jq -y

RUN npm init -y && npm i --save serve
RUN cat package.json | jq '.scripts.start="serve ."' > tmp.json && mv tmp.json package.json 

EXPOSE 5000

ARG time
# RUN echo "start sleep" && sleep 60 && echo "done sleep"

COPY hello.txt ./

CMD npm start