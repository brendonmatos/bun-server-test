FROM jarredsumner/bun:edge
WORKDIR /app
COPY ./server.ts ./
ENTRYPOINT ["bun", "server.ts"]