# docker-helga

Dockerfile for helga chatbot

## Usage

Grab from docker cloud with: `docker pull narfman0/helga`

Build locally with `docker build . -t helga`

* You will need to add your settings.py, install plugins, and deal with db dumps/loads

* You will probably want to run the container with a volume set up to mount /var/lib/mongodb
  to persist the database

## License

Copyright 2018 Jon Robison

See LICENSE for details
