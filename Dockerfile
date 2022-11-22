FROM node:16-bullseye-slim


COPY . .
ADD server.js package*.json ./
RUN npm install

EXPOSE 8080

#ENTRYPOINT ["npm", "start"]

CMD node server.js