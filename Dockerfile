# Use the provided base image
FROM ghcr.io/berriai/litellm:main-latest

# Set the working directory to /app
WORKDIR /app


# Copy the configuration file into the container at /app
COPY litellm_config.yaml .

# Expose the necessary port
ENTRYPOINT litellm --config litellm_config.yaml --host 0.0.0.0 --port $PORT
