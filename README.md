# Dockerize-Angular-Application:


Dockerizing an Angular application involves the following steps:

Create a Dockerfile: A Dockerfile is a script that contains instructions on how to build a Docker image. In the Dockerfile, you will specify the base image, the working directory, and the commands to run to build the Angular application.

Build the Docker image: To build the Docker image, run the docker build command from the directory where the Dockerfile is located. This will run the commands in the Dockerfile and create the Docker image.

Run the Docker container: To run the Docker container, use the docker run command. You can map a local port to a port in the container to make the application accessible from the host.

Here's an example of a simple Dockerfile for an Angular application:

# Use an official Node.js runtime as the base image
FROM node:14-alpine

# Set the working directory to /app
WORKDIR /app

# Copy the package.json and package-lock.json files to the container
COPY package*.json ./

# Install the npm dependencies
RUN npm install

# Copy the rest of the application files to the container
COPY . .

# Build the Angular application
RUN npm run build

# Expose port 80 in the container
EXPOSE 80

# Start the Angular application
CMD [ "npm", "start" ]
--------------------

Note that this is just an example, and the exact steps may vary depending on your specific Angular application.
