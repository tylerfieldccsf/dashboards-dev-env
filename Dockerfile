# Use Debian as a parent image
FROM debian:latest

SHELL ["/bin/bash", "-c"]
# Update the package index and install necessary packages
RUN apt-get update && apt-get install -y \
    ruby \
    ruby-bundler \
    ruby-dev \
    vim \
    systemctl \
    nginx \
    build-essential \
    git \
    locales \
 && rm -rf /var/lib/apt/lists/* 

# Generate the desired locale
RUN sed -i 's/# \(en_US.UTF-8 UTF-8\)/\1/' /etc/locale.gen && \
    locale-gen

# Set environment variables
ENV LANG=en_US.UTF-8
ENV LANGUAGE=en_US:en
ENV LC_ALL=en_US.UTF-8

# Set the working directory to /app
WORKDIR /app

# Display Ruby version and bundler version
RUN ruby --version && bundle --version && gem install bundler jekyll

# Command to run when the container starts
CMD ["nginx", "-g", "daemon off;"]