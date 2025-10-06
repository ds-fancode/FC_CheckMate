ARG REGISTRY=us-east4-docker.pkg.dev/fc-stage-apps-prj-01/fc-docker-images-stage
FROM ${REGISTRY}/node-base:20.17.0 AS runtime

# Set working directory
WORKDIR /app

# Base image already contains runtime tooling and non-root user
# Copy application code with proper ownership for appuser
COPY --chown=appuser:appuser . .

# Install dependencies and build (running as appuser from base image)
RUN corepack yarn install

RUN corepack yarn build

EXPOSE 3000

CMD ["node", "server.mjs"]
