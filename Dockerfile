# Use a specific Node.js version (e.g., 16.20.2 for better stability)
FROM node:20.17.0

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json for better caching
COPY package*.json ./

# Install dependencies (consider using --omit=dev if you only need production dependencies)
RUN npm install

# Copy the rest of your application
COPY . .

# Expose the port your app runs on (default for many Node.js apps is 3000)
EXPOSE 3000

# Use correct JSON array syntax for CMD to prevent shell issues
CMD ["npm", "run", "dev"]
