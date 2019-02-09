#specify a base image
FROM node:alpine
WORKDIR '/app'

#dependencies
COPY package.json .
RUN npm install
COPY . .

#Default command
CMD ["npm", "start"]
