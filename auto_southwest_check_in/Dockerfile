# Base image from Home Assistant add-ons
ARG BUILD_FROM=ghcr.io/hassio-addons/base/amd64:9.2.1
FROM ${BUILD_FROM}

# Pull in code from jdholtz/auto-southwest-check-in in a separate build stage
FROM jdholtz/auto-southwest-check-in AS southwest_source

# Final build stage using the Home Assistant base
FROM ${BUILD_FROM}

# Copy /app from the upstream image
COPY --from=southwest_source /app /app

# Copy our run script into /etc/cont-init.d so s6 overlay runs it at startup
COPY run.sh /etc/cont-init.d/99-auto_southwest_checkin.sh
RUN chmod +x /etc/cont-init.d/99-auto_southwest_checkin.sh

# DO NOT define ENTRYPOINT or CMD here.
# We want to preserve the base image's default ENTRYPOINT ["/init"],
# which runs s6 as PID 1.
