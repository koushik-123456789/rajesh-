# Use an official Node.js runtime as a parent image
FROM node:14

# Set the working directory
WORKDIR /app

# Copy the package.json file to install dependencies
COPY package.json .

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Make port 8080 available to the world outside this container
EXPOSE 8080

# Define the command to run the application
CMD ["node", "app.js"]
