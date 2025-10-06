#!/bin/bash

# Script to run FC CheckMate locally using Docker
# This script builds and runs the application with environment variables

set -e

echo "🏗️  Building FC CheckMate Docker image..."
docker build -f dockerfile -t fc-checkmate:local .

echo ""
echo "🗑️  Cleaning up old container if exists..."
docker rm -f fc-checkmate 2>/dev/null || true

echo ""
echo "🚀 Starting FC CheckMate container..."

# Check if .env file exists
if [ ! -f .env ]; then
    echo "⚠️  Warning: .env file not found. Creating from env.example..."
    cp env.example .env
    echo "📝 Please edit .env file with your actual values and run this script again."
    exit 1
fi

# Load environment variables from .env
set -a
source .env
set +a

# Run the container
docker run -d \
  --name fc-checkmate \
  -p 3000:3000 \
  -e DB_URL="${DB_URL}" \
  -e GOOGLE_CLIENT_ID="${GOOGLE_CLIENT_ID}" \
  -e GOOGLE_CLIENT_SECRET="${GOOGLE_CLIENT_SECRET}" \
  -e NODE_ENV="production" \
  -e PORT="3000" \
  fc-checkmate:local

echo ""
echo "✅ FC CheckMate is starting..."
echo ""
echo "📊 Checking container status..."
sleep 3

if docker ps | grep -q fc-checkmate; then
    echo "✅ Container is running!"
    echo ""
    echo "🔗 Application URLs:"
    echo "   App:         http://localhost:3000"
    echo "   Health:      http://localhost:3000/healthcheck"
    echo ""
    echo "📋 Useful commands:"
    echo "   View logs:   docker logs -f fc-checkmate"
    echo "   Stop:        docker stop fc-checkmate"
    echo "   Remove:      docker rm -f fc-checkmate"
    echo ""
    echo "📝 Showing recent logs..."
    docker logs fc-checkmate
else
    echo "❌ Container failed to start. Check logs:"
    docker logs fc-checkmate
    exit 1
fi

