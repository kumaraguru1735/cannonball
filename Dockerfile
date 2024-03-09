FROM node:16-alpine as base
# Set the working directory inside the container
WORKDIR /src

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code to the working directory
COPY . .

# Build the Next.js application
#RUN npm run build

# Expose the port Next.js is running on (usually 3000)
EXPOSE 3000

# Command to run the Next.js application
CMD ["npm", "run", "dev"]