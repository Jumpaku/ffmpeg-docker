# ffmpeg-docker

## Run ffmpeg with Docker

```sh
docker run -it -v $(pwd):/workdir jumpaku/ffmpeg-docker bash
```

## Run ffmpeg with docker-compose

Add docker-compose.yml

```yml
services: 
  ffmpeg:
    image: 'jumpaku/ffmpeg-docker'
    working_dir: '/workdir/'
    volumes: 
      - './:/workdir/'
```

```sh
docker-compose run ffmpeg bash
```

## Examples of executing ffmpeg


```sh
ffmpeg -i video-in.mov -preset veryslow video-out.mp4
```

```sh
ffmpeg -i video-in.mp4 -crf 20 video-out.mp4
```
