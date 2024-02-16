# Using node:19.7.0-alpine base image
FROM node:19.7-alpine

# Set the default Node environment to production
ENV NODE_ENV production


# Changing ownership of 'labone' directory to the 'node' user and group as indicated
RUN chown -R node:node /src

# Setting the 'labone' directory as the working directory
WORKDIR /src

# Setting the user to 'node'
USER node

# Clone GitHub repository
RUN apk add --no-cache git && \
    git clone https://github.com/DJ-098/jaisankar-100887415/src

# Run npm install to install Node.js packages
RUN npm install

# Expose port 3000
EXPOSE 3000

# Set the default execution command for the container
CMD ["node", "src/index.js"]
