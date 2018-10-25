## What is rmondocker

rmondocker is a rocketmod docker image.

Note: this version supports only Unturned 3

## Building image

Get the latest version of rmondocker from GitHub:

```console
git clone https://github.com/KlaasM/rmondocker.git
```

Go into the `rmondocker` directory and build the Dockerfile:

```console
docker build -t rmondocker .
```

## How to use this image

### Hosting a simple local Unturned server

```console
$ docker run --name some-server -d \
    -v /host/path/unturned:/data/unturned \
    -e STEAM_USERNAME="username" \
    -e STEAM_PASSWORD="password" \
    rmondocker
```

### Hosting a simple server with all options

```console
$ docker run --name some-server -d \
    -v /host/path/unturned:/data/unturned \
    -p 27016-27017:27016-27017 \
    -e STEAM_USERNAME="username" \
    -e STEAM_PASSWORD="password" \
    -e SERVER_NAME="name"
    rmondocker
```

### Exposing external ports

```console
$ docker run --name some-server -d \
    -v /host/path/unturned:/data/unturned \
    -e STEAM_USERNAME="username" \
    -e STEAM_PASSWORD="password" \
    -p 27016-27017:27016-27017 \
    rmondocker
```

You can set the exposed ports by modifying the first port range to the two ports above the desired main port.

### Specifying other server name

```console
$ docker run --name some-server -d \
    -v /host/path/unturned:/data/unturned \
    -e STEAM_USERNAME="username" \
    -e STEAM_PASSWORD="password" \
    -e SERVER_NAME="name"
    rmondocker
```

This option should give you the ability to share one persistent Unturned volume across Docker containers on the same host.

### Interactively

```console
$ docker run --name some-server -it \
    -v /host/path/unturned:/data/unturned
    -e STEAM_USERNAME="username" \
    -e STEAM_PASSWORD="password" \
    -p 27016-27017:27016-27017 \
    rocketondocker
```

You could also attach to the container directly:

```console
docker attach [OPTIONS] CONTAINER
```
