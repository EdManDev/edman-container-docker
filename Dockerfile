FROM node: 15.12.0-alpine AS alpine
WORKDIR /app
COPY package.json.
RUN npm install
COPY . .
EXPOSE 3008
CMD ["npm", "run", "start"]