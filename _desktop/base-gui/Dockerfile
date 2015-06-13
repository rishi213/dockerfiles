FROM nightling/base

# Basic desktop prerequisites
RUN dnf -y install \
	alsa-plugins-pulseaudio.* \
	mesa-dri-drivers.* \
	pulseaudio-libs-glib2.* \
	redhat-lsb.* \
	{dejavu-{sans,serif},google-cros}*-fonts \
	&& dnf clean all \
	&& useradd -md /data -UG audio,video user

# Common shared libraries
RUN dnf -y install \
	adwaita*.* \
	gtk{2,3} \
	libicu \
	qtwebkit.* \
	&& dnf clean all

ENV PULSE_SERVER /run/user/pulse/native

COPY include /
VOLUME ["/data"]
ENTRYPOINT ["entrypoint"]
