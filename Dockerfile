FROM jarredsumner/bun:edge as bun
RUN ls -la

FROM scratch
COPY --from=bun /root/.bun/bin/bun /bin/bun
COPY ./server.ts ./server.ts
CMD ["/bin/bun", "./server.ts"]