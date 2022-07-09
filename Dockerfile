FROM de

FROM jarredsumner/bun:edge as bun

RUN ls -la

FROM base


COPY --from=bun /root/.bun/bin/bun /bin/bun

COPY ./server.ts ./

CMD ["/bin/bun", "./server.ts"]