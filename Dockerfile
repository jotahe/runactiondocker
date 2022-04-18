# Base image docker version 20.10 in alpine
FROM docker:20.10
# Install bash and make
RUN apk add bash make
# Copy the outside entrypoint inside the container
COPY entrypoint.sh /entrypoint.sh
# Execute by default when the container runs
ENTRYPOINT ["/entrypoint.sh"]