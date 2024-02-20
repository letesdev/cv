# Use the official lightweight Node.js 18 image.
# https://hub.docker.com/_/node
FROM node:18

# Create and change to the app directory.
RUN mkdir -p /home/app
WORKDIR /home/app

COPY . .

RUN npm install
RUN npm run build

ENV HOST=0.0.0.0
ENV PORT=4321
EXPOSE 4321

# Run the web service on container startup.
CMD ["npm", "start"]
