FROM nightling/base

RUN dnf -y install redhat-lsb.* pulseaudio-libs.* gtk3 GConf2 libicu \
	adwaita*.* google-cros*-fonts dejavu-s*-fonts \
	&& dnf clean all \
	&& useradd -Umd /data user

ENV PULSE_SERVER /run/user/pulse/native

COPY include /
VOLUME ["/data"]
ENTRYPOINT ["entrypoint"]
