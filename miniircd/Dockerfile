FROM nightling/base

COPY source /opt/miniircd
RUN useradd -rmd /data miniircd

EXPOSE 6667
USER miniircd
VOLUME /data

ENTRYPOINT ["/opt/miniircd/miniircd"]
CMD ["--statedir=/data"]
