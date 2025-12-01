# n8n-ffmpeg

A ready-to-use tool that combines **n8n** (a visual workflow automation platform) with **ffmpeg** (for processing videos and audio files) and **yt-dlp** (for downloading videos from YouTube and other platforms).

## What is this?

- **n8n** lets you automate tasks by connecting different apps and services together using a visual drag-and-drop interface — no coding required!
- **ffmpeg** allows you to work with video and audio files (convert formats, compress, extract audio, etc.)
- **yt-dlp** is a powerful command-line tool for downloading videos from YouTube, Vimeo, and [many other sites](https://github.com/yt-dlp/yt-dlp/blob/master/supportedsites.md)

This Docker image gives you all three tools in one package, so you can build workflows that download and process media files.

## Getting Started (For Beginners)

### Step 1: Install Docker

First, you need Docker installed on your computer:

- **Windows/Mac**: Download and install [Docker Desktop](https://www.docker.com/products/docker-desktop/)
- **Linux**: Follow the [official Docker installation guide](https://docs.docker.com/engine/install/)

After installation, make sure Docker is running (you should see the Docker icon in your system tray).

### Step 2: Open a Terminal

- **Windows**: Search for "Command Prompt" or "PowerShell" in the Start menu
- **Mac**: Open "Terminal" from Applications → Utilities
- **Linux**: Open your terminal application

### Step 3: Run n8n-ffmpeg

Copy and paste this command into your terminal and press Enter:

```bash
docker run -d \
  --name n8n-ffmpeg \
  -p 5678:5678 \
  -v n8n_data:/home/node/.n8n \
  otomasiai/n8n-ffmpeg
```

**What this does:**
- Downloads the n8n-ffmpeg image from Docker Hub (only needed the first time)
- Starts n8n in the background
- Saves your work so it's not lost when you restart

### Step 4: Open n8n in Your Browser

Go to: **http://localhost:5678**

That's it! You should see the n8n welcome screen where you can start creating workflows.

## Useful Commands

| What you want to do | Command |
|---------------------|---------|
| Stop n8n | `docker stop n8n-ffmpeg` |
| Start n8n again | `docker start n8n-ffmpeg` |
| View logs | `docker logs n8n-ffmpeg` |
| Remove completely | `docker rm -f n8n-ffmpeg` |

## What Can You Do With This?

With ffmpeg and yt-dlp available in your n8n workflows, you can automate things like:

- 🎬 Convert video formats (e.g., MP4 to AVI)
- 🎵 Extract audio from video files
- 🖼️ Create thumbnails from videos
- 📦 Compress large media files
- ✂️ Merge or split audio/video files
- 📥 Download videos from YouTube and other platforms
- 🎧 Download audio-only from videos
- 📋 Extract video metadata and information

Use the **Execute Command** node in n8n to run ffmpeg or yt-dlp commands within your workflows.

## Need Help?

- [n8n Documentation](https://docs.n8n.io/)
- [n8n Community Forum](https://community.n8n.io/)
- [ffmpeg Documentation](https://ffmpeg.org/documentation.html)
- [yt-dlp Documentation](https://github.com/yt-dlp/yt-dlp#readme)

## License

MIT