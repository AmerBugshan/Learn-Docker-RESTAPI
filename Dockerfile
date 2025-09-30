# Use official Node.js LTS version
FROM node:20-alpine

# Set working directory inside container
WORKDIR /usr/src/app

# Copy package files
COPY package*.json ./

# Install dependencies (if you add any in future)
RUN npm install

# Copy all application files
COPY . .

# Expose the port your app runs on
EXPOSE 8000

# Command to run the application
CMD ["npm", "start"]