# Dockerised Node Sonos HTTP API

Docker Hub: https://hub.docker.com/r/jinglemansweep/node-sonos-http-api/
Original Documentation: http://jishi.github.io/node-sonos-http-api/

## Usage

### Docker

    docker run -it \
               --name node-sonos-http-api \
               --net=host \
               -e "VOICERSS_API_KEY=xyz" \
               -p "5005:5005" \
               jinglemansweep/node-sonos-http-api

### Docker Compose

    node-sonos-http-api:
        image: jinglemansweep/node-sonos-http-api
        restart: always
        network_mode: host
        ports:
            - "5005:5005"
        environment:
            - "VOICERSS_API_KEY=xyz"

## Environment Variables

* `HTTP_PORT` (default: `5005`)
* `HTTPS_PORT` (default: `5006`)
* `ANNOUNCE_VOLUME` (default: `40`)
* `VOICERSS_API_KEY` (default: `""`)

## Volumes

* `/opt/app/cache`
* `/opt/app/presets`
