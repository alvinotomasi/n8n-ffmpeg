# n8n-ffmpeg

A Docker image combining [n8n](https://n8n.io/) (workflow automation) with [ffmpeg](https://ffmpeg.org/) (multimedia processing framework).

## Prerequisites

- Docker
- Docker Compose (optional)

## Quick Start

### Build the image

```bash
docker build -t n8n-ffmpeg .
```

### Run with Docker

```bash
docker run -it --rm \
  -p 5678:5678 \
  -v n8n_data:/home/node/.n8n \
  n8n-ffmpeg
```

### Run with Docker Compose

```bash
docker-compose up -d
```

## Access n8n

Open your browser and navigate to: http://localhost:5678

## Verify ffmpeg Installation

```bash
docker exec -it n8n-ffmpeg ffmpeg -version
```

## Use Cases

With ffmpeg available in your n8n workflows, you can:

- Convert video/audio formats
- Extract audio from video files
- Create thumbnails from videos
- Compress media files
- Merge or split audio/video files

Use the **Execute Command** node in n8n to run ffmpeg commands within your workflows.

## Environment Variables

| Variable | Description | Default |
|----------|-------------|---------|
| `N8N_BASIC_AUTH_ACTIVE` | Enable basic authentication | `true` |
| `N8N_BASIC_AUTH_USER` | Basic auth username | `admin` |
| `N8N_BASIC_AUTH_PASSWORD` | Basic auth password | `changeme` |
| `N8N_HOST` | Host name | `localhost` |
| `N8N_PORT` | Port number | `5678` |
| `GENERIC_TIMEZONE` | Timezone | `UTC` |

## Automated Builds

This repository includes a GitHub Actions workflow that automatically checks for new n8n versions and builds/pushes updated Docker images.

### How it works

- The workflow runs daily at midnight UTC
- It checks the latest n8n version on Docker Hub
- If a new version is available, it builds and pushes a new image
- Images are tagged with both `latest` and the specific n8n version (e.g., `1.70.0`)

### Required Setup

To enable automated builds, configure the following in your GitHub repository:

**Repository Variables** (Settings → Secrets and variables → Actions → Variables):
- `DOCKER_USERNAME`: Your Docker Hub username
- `DOCKER_IMAGE_NAME`: (Optional) Custom image name, defaults to `n8n-ffmpeg`

**Repository Secrets** (Settings → Secrets and variables → Actions → Secrets):
- `DOCKER_PASSWORD`: Your Docker Hub password or access token

### Manual Trigger

You can manually trigger a build from the Actions tab by selecting "Build and Push Docker Image" workflow and clicking "Run workflow". Use the "Force build" option to rebuild even if no new version is detected.

## License

MIT
