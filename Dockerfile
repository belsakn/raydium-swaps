# Use a Node.js base image that includes npm
# Adjust the version as needed; this uses the latest LTS version as of my last update
FROM node:16

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json (or yarn.lock) to leverage Docker cache
COPY package*.json ./
COPY yarn.lock* ./

# Install global dependencies
RUN npm install -g typescript ts-node

# Install project dependencies
RUN npm install

RUN yarn

# Copy the rest of your application code
COPY . .

# Build your TypeScript project if necessary
RUN tsc

# The command to run your application
CMD [ "yarn", "start" ]
