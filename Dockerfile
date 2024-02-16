# Use node:19.7.0-alpine base image
FROM node:19.7.0-alpine

# Set environment variable NODE_ENV to production
ENV NODE_ENV=production

# Create a new directory in root called labone
RUN mkdir /labone

# Change ownership to the node user and node group
RUN chown -R node:node /labone

# Set the new folder as the working directory
WORKDIR /labone

# Set the user to node
USER node

# Copy all source files and change file ownership to the node user and node group
COPY --chown=node:node . .

# Run npm install to install node.js packages
RUN npm install

# Expose port 3000
EXPOSE 3000

# Set default execution command
CMD ["node", "index.js"]

