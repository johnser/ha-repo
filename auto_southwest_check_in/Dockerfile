# Use a Home Assistant Add-on base image
ARG BUILD_FROM=ghcr.io/hassio-addons/base/amd64:9.2.1
FROM ${BUILD_FROM}

# Multi-stage build: 
# 1) Download files from jdholtz/auto-southwest-check-in
FROM jdholtz/auto-southwest-check-in AS southwest_source

# 2) Build final image using the Home Assistant base
FROM ${BUILD_FROM}

# Copy the code from the upstream container
COPY --from=southwest_source /app /app

# Add run script
COPY run.sh /run.sh
RUN chmod +x /run.sh

# When the add-on starts, run the script
CMD [ "/run.sh" ]
