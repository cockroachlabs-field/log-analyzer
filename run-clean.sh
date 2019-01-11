#!/bin/bash

docker-compose down --remove-orphans --volumes

docker system prune -a -f
