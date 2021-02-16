FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive
RUN apt update -y && apt install -y ffmpeg
COPY README.md /README.md

WORKDIR /workdir/

CMD ["bash"]
