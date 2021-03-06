# docker-helga

Dockerfile for helga chatbot

## Usage

Grab from docker cloud with: `docker pull narfman0/docker-helga`

Build locally with `docker build . -t helga`

* You will need to add your settings.py, install plugins, and deal with db dumps/loads

## Extending

You might want to use a Dockerfile to extend this to add plugins and config. Something
like:

```
FROM narfman0/docker-helga:latest

RUN pip install \
    helga-quip \
    helga-flip \
    helga-lingo \
    helga-reminders \
    helga-elo

ADD settings.py /usr/local/bin/settings.py

ENTRYPOINT ["/usr/local/bin/entrypoint.sh", "--settings=/usr/local/bin/settings.py"]
```

## License

Copyright 2018 Jon Robison

See LICENSE for details
