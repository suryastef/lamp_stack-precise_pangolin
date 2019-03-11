# LAMP Stack on Ubuntu LTS 12.04 Precise Pangolin

This docker image will obtain several package from ubuntu canonical repository, included:

- Apache : 2.2.22
- PHP : 5.3.10-1ubuntu3.26; Zend Engine v2.3.0
- MySQL : 14.14 Distrib 5.5.52

## Running the Container

Run this command inside the same folder as those two files to download, create, and start the container:

```sh
docker-compose up -d --build
```
