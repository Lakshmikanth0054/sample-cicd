FROM ubuntu:20.04
RUN apt-get update 
RUN apt-get install -y curl
RUN curl -sL https://deb.nodesource.com/setup_18.x |  bash -
RUN apt-get install -y nodejs

WORKDIR /cicd/
# RUN npm install axios
EXPOSE 8003
CMD npm start