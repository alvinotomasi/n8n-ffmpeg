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

## License

MIT
