# https://developers.home-assistant.io/docs/add-ons/configuration#add-on-dockerfile
ARG BUILD_FROM
FROM $BUILD_FROM

# Pull in the existing container in a multi-stage build
FROM jdholtz/auto-southwest-check-in AS southwest_source

# Build the final image from the base
FROM ${BUILD_FROM}

# Copy the code from the upstream container into our add-on image
COPY --from=southwest_source /app /app

# Add the run script
COPY run.sh /run.sh
RUN chmod a+x /run.sh

# Start the script when the add-on runs
CMD [ "/run.sh" ]
