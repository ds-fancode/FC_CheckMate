ARG REGISTRY=local
FROM ${REGISTRY}/node-base:20.17.0 AS runtime

# Set working directory
WORKDIR /app

# Base image already contains runtime tooling and non-root user

RUN corepack enable && corepack prepare yarn@4.0.0 --activate

# Copy application code
COPY . .
RUN yarn install

RUN yarn build

EXPOSE 3000

# Inherit non-root user from base image
