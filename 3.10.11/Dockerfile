FROM debian:stable-slim

RUN mkdir -p /compiler
WORKDIR /compiler

# Install required libraries for 32-bit compatibility
RUN dpkg --add-architecture i386 && \
	apt-get update && \
	apt-get install -y libc6:i386 lib32z1

# Copy the binaries and required files to the container
COPY files/bin /usr/bin
RUN chmod +x /usr/bin/pawncc
RUN chmod +x /usr/bin/pawndisasm

COPY files/lib /usr/lib

# Use the start script as entrypoint
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT [ "/entrypoint.sh" ]
