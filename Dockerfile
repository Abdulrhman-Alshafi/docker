FROM node:19-alpine

WORKDIR /app

COPY package.json ./
RUN npm install

COPY scr ./scr

EXPOSE 4000

# Start the server from the scr folder
CMD ["npm", "start"]