FROM nightling/base

COPY source /opt/miniircd
RUN mkdir --mode 0777 /statedir

EXPOSE 6667

USER nobody
ENTRYPOINT ["/opt/miniircd/miniircd"]
CMD ["--statedir=/statedir"]
