# Use the latest Ubuntu image as the base
FROM ubuntu:latest

# Set environment variables to avoid interactive prompts during installation
ENV DEBIAN_FRONTEND=noninteractive

# Update package lists and install prerequisites for Docker
RUN apt-get update && apt-get install -y \
apt-transport-https \
ca-certificates \
curl \
software-properties-common && \
apt-get dist-upgrade -y

COPY entrypoint.sh /

ENTRYPOINT ["/entrypoint.sh"]
