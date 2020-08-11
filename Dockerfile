FROM node

#ENTRYPOINT ["node","index.js"]
#RUN npm install -g http-server 
#Environment Variables
#DB Name: VVE_DB
EXPOSE 8000 
WORKDIR /app
#Copy package and package-lock 
COPY package*.json /app/
#Get dependencies
RUN npm install

COPY . /app/
#Output production 
ENV DATABASE_NAME=mongodb
## PULL WAIT APP
ADD https://github.com/ufoscout/docker-compose-wait/releases/download/2.2.1/wait /wait
RUN chmod +x /wait
## Launch the wait tool, allow pre-app services to ini before calling npm start
CMD /wait && npm start