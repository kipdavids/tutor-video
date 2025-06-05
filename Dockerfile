# Use official Node.js image as base
FROM node:18-alpine

# Create app directory
WORKDIR /app

# Copy package files
COPY package.json package-lock.json* ./ 

# Install dependencies
RUN npm install

# Copy rest of the app
COPY . .

# Build Next.js app
RUN npm run build

# Expose port (Next.js default)
EXPOSE 3000

# Start the app
CMD ["npm", "start"]
