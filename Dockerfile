# Use a lightweight base image with development tools
FROM ubuntu:22.04

# Set environment variables
ENV DEBIAN_FRONTEND=noninteractive

# Update and install required dependencies
RUN apt-get update && apt-get install -y \
    build-essential \
    libncurses-dev \
    bison \
    flex \
    libssl-dev \
    bc \
    cpio \
    kmod \
    wget \
    git \
    && apt-get clean

# Set the working directory inside the container
WORKDIR /kernel

# Optional: Add a default entry point for building the kernel
CMD ["bash"]
