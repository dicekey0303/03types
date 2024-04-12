# Use Node.js version 19 or later slim image
FROM --platform=linux/x86_64 node:19-slim

# Set working directory
WORKDIR /app

# Install necessary packages
RUN apt-get update && apt-get install -y locales git procps vim tmux curl \
  && rm -rf /var/lib/apt/lists/* \
  && locale-gen ja_JP.UTF-8 \
  && localedef -f UTF-8 -i ja_JP ja_JP

# Set environment variables for Japanese locale and Tokyo timezone
ENV LANG=ja_JP.UTF-8
ENV TZ=Asia/Tokyo
