############################################################
# SET HERE YOUR TITLE
# and here you put a little description
############################################################

# Image used as base skeleton
FROM some-linux:latest

# File Author / Maintainer
MAINTAINER Wesley Rodrigues da Silva <wesley.it@gmail.com>

# Send a local file to container
ADD includes/mycommand.sh /some/place/in/container

# Set an environment variable
ENV LANG en.us_utf-8

# Define a volume mount
VOLUME /data

# Change the user which will run the next commands
USER someuser

# Change the container directory
WORKDIR /home/someuser

# Run a command during build
RUN ["mycommand.sh"]

# Expose some port
EXPOSE 27017

# Pass a parameter to entrypoing command
CMD ["--parameter XPTO"]

# Set default container command
ENTRYPOINT ["/usr/bin/command"]
