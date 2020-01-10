# Build artifact stage
FROM alpine:3 AS builder

# Install gcc
RUN apk add --no-cache gcc musl-dev && adduser -D -g '' appuser

WORKDIR /app

COPY . /app

# Statically link our artifact
RUN gcc --static shortestfizzbuzz.c -o shortestfizzbuzz

# Final deploy stage
FROM scratch

COPY --from=builder /etc/passwd /etc/passwd
COPY --from=builder /app/shortestfizzbuzz .

USER appuser

ENTRYPOINT ["./shortestfizzbuzz"]