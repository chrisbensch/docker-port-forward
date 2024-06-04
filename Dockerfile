# Use a lightweight base image
FROM alpine:latest

# Install socat
RUN apk add --no-cache socat

# Define the entrypoint script
ENTRYPOINT ["sh", "-c", "socat TCP4-LISTEN:${SOURCE_PORT},fork TCP4:${DEST_IP}:${DEST_PORT}"]
