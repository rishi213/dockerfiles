FROM nightling/base

# Basic desktop prerequisites
RUN dnf -y install \
	alsa-plugins-pulseaudio.* \
	pulseaudio-libs.* \
	redhat-lsb.* \
	{dejavu-{sans,serif},google-cros}*-fonts \
	&& dnf clean all \
	&& useradd -Umd /data user

# Common shared libraries
RUN dnf -y install \
	adwaita*.* \
	gtk3 \
	libicu \
	qtwebkit.* \
	&& dnf clean all

ENV PULSE_SERVER /run/user/pulse/native

COPY include /
VOLUME ["/data"]
ENTRYPOINT ["entrypoint"]
