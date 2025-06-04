FROM node:22

# Install Google Cloud SDK
RUN apt-get update && apt-get install -y curl python3 python3-pip bash \
  && curl -sSL https://sdk.cloud.google.com | bash \
  && apt-get clean

ENV PATH="/root/google-cloud-sdk/bin:$PATH"
