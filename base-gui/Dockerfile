FROM nightling/base

RUN dnf -y install redhat-lsb.{x86_64,i686} pulseaudio-libs.{x86_64,i686} \
	dejavu-{sans*,serif}-fonts google-cros*-fonts \
	&& dnf clean all

ENV PULSE_SERVER /run/user/pulse/native
