# Use lightweight Node.js image
FROM node:20-alpine

# Set working directory inside the container
WORKDIR /app

# Copy package.json and yarn.lock first (for caching)
COPY package.json yarn.lock .yarnrc.yml ./

# Enable Corepack and install dependencies
RUN corepack enable && yarn install --frozen-lockfile

# Copy source code
COPY src ./src

# Expose the port your server listens on
EXPOSE 9000

# Command to start the server
CMD ["node", "src/index.js"]
