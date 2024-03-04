# Resource Usage
- CPU: 4 cores
- RAM: 4GB
- Memory: 20GB

## Build
- Step 1: Setup
```
$ termux-change-repo

# setup
$ pkg update -y && pkg upgrade -y && pkg install -y git
$ git clone https://github.com/liemthanh-playgroundvina/docker-qemu-arm
$ cd docker-qemu-arm

# alpine setup
$ make setup
```

- Step 2: Login Alpine
```
$ cd ~/docker-qemu-arm/alpine/
$ make start-alpine
# login: root, password: {ROOT_PASSWORD} in env
```