ARG N8N_VERSION=latest
FROM n8nio/n8n:${N8N_VERSION}

USER root

# Install ffmpeg
RUN apk add --no-cache ffmpeg

# Switch back to node user for security
USER node

WORKDIR /home/node
