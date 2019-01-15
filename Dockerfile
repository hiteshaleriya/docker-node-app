# Use an official Node runtime as a parent image
FROM node:8

# Create app directory
# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./

# Install any needed packages specified in package.json
RUN npm install

# If you are building your code for production
# RUN npm install --only=production

# Make port 8080 available to the world outside this container
EXPOSE 8080

# Run server.js when the container launches
CMD [ "npm", "start" ]