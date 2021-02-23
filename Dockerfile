FROM plugins/downstream AS downstream

FROM alpine:3.13
RUN apk upgrade --no-cache --available \
    && apk add --no-cache \
    bash
COPY --from=downstream /bin/drone-downstream /bin/drone-downstream