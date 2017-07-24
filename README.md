
# Container with Nginx for Magento 1.x

Included:

- Nginx
- Files configuration

## Description

Docker container Nginx for Magento 1.x.

## Quick Start

Run:

```bash
docker run -Pit --name=nginx fastwhitecat/nginx-magento
```
Run with configuration:

```bash
docker run -Pit --name=nginx \
        -e SERVER_APP="127.0.0.1" \
        -e SERVER_PORT="9000" \
        -e MAGE_ROOT="/var/www/html/" fastwhitecat/nginx-magento
```

Build:

```bash

docker build -t nginx .

```
