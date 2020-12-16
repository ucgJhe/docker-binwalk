build binwalk in docker

## Build

Tested it on
- Archlinux
- Ubuntu 20.04.1 LTS

```
git clone https://github.com/ucgJhe/docker-binwalk
cd docker-binwalk
docker build . -t binwalk:0
```

## Usage

```
docker run -it --rm -v "$(pwd):/binwalk" binwalk:0 [binwalk options] ./firmware.bin
```
