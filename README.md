# ffmpeg-docker


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

Execute docker-compose

```sh
docker-compose run ffmpeg ffmpeg -i video-in.mov -preset veryslow video-out.mp4
```