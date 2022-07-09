FROM scratch as base

FROM jarredsumner/bun:edge as bun

RUN ls -la

FROM base


COPY --from=bun /root/.bun/bin/bun /bin/bun

WORKDIR /app
COPY ./server.ts ./
CMD ["bun", "server.ts"]