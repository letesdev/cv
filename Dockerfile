# Use the official lightweight Node.js 18 image.
# https://hub.docker.com/_/node
FROM node:18

# Create and change to the app directory.
RUN mkdir -p /home/app
WORKDIR /home/app

EXPOSE 4321

# Install all dependencies.
# RUN npm install
# RUN npm run build

# Run the web service on container startup.
# CMD [ "yarn", "dev", "--host"]
# CMD [ "yarn", "dev"]
# CMD ["npm", "start", "--host"]
