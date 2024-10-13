# Use a base image for Node.js
FROM node:18

# Set the working directory for the frontend application
WORKDIR /app

# Copy the package.json and package-lock.json files
COPY package*.json ./

# Install the frontend application dependencies
RUN npm install

# Copy the frontend application source code into the container
COPY . .

# Build the frontend application
RUN npm run build

# Expose the port that your frontend server will run on (if applicable)
# EXPOSE 3000

# Define the command to start your frontend server (update as needed)
CMD ["npm", "start"]


# Serve stage
FROM nginx:1.25.1

# Copy the custom nginx.conf file to the container
COPY .docker/nginx.conf /etc/nginx/nginx.conf

# Copy the built React app from the build stage to the nginx container
COPY --from=build /app/build /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]