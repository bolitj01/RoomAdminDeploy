# NodeJS 20 Dockerfile for serving the Express app in /api 
# that serves the React app build in dist/ folder
FROM node:20
WORKDIR /app
COPY package.json /app
RUN npm install
COPY . /app
RUN npm run build
CMD ["npm", "start"]
EXPOSE 8080