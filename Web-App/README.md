# Super-Local-Screen-Recorder: Web App

Records your screen with a webcam bubble and microphone, lets you trim, and downloads an MP4. It's all in `index.html`, with no build step, and nothing gets uploaded.

## Requirements

- Conda
- Chrome, Edge or Safari on desktop. Firefox works but only exports WebM.

## Setup

```bash
make setup
```

## Run

```bash
make run
```

Opens on http://localhost:8000. If that port is taken: `make run PORT=8010`.

## Deploy

**Where it runs:** A static file on a DigitalOcean droplet, in `/var/www/super-local-screen-recorder-app.kohjakob.com/`, served by an nginx site for that domain. It has to be HTTPS, because browsers only allow screen capture on secure pages.

**Needs:** SSH access as `root` to `super-local-screen-recorder-app.kohjakob.com`. The first connection asks you to confirm the server's key.

```bash
rsync -avz --no-owner --no-group index.html root@super-local-screen-recorder-app.kohjakob.com:/var/www/super-local-screen-recorder-app.kohjakob.com/
```
