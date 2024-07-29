# Use an official Node.js runtime as the base image
FROM node:14-alpine

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the container
COPY . .

# Install dependencies
RUN npm install

# Copy the rest of the app's source code to the container
# COPY . .

# Build the app
RUN npm run build

# Expose the port that the app will run on
EXPOSE 3000

# Define the command to run the app
CMD ["npm", "start"]