FROM nightling/buildpack

RUN dnf -y install \
	american-fuzzy-lop \
	bind-utils \
	binwalk \
	checksec \
	diffstat \
	dnsenum \
	etcd \
	foremost \
	gdb \
	goaccess \
	hexedit \
	iperf \
	iputils \
	irssi \
	john \
	ltrace \
	nano \
	net-tools \
	nmap \
	pcapdiff \
	scapy \
	screen \
	snmpcheck \
	socat \
	speedtest-cli \
	sslscan \
	sslsplit \
	strace \
	subnetcalc \
	tcpdump \
	tcpreplay \
	telnet \
	tor \
	traceroute \
	valgrind \
	vim-enhanced \
	w3m \
	whois \
	zmap \
	&& dnf clean all

RUN git clone https://github.com/zachriggle/peda.git /opt/peda \
	&& pip install git+https://github.com/JonathanSalwan/ROPgadget.git \
	&& pip install git+https://github.com/Gallopsled/pwntools.git \
	&& dnf -y install libini_config-devel.* \
	&& dnf clean all \
	&& git clone https://github.com/zardus/preeny.git /opt/preeny \
	&& pushd /opt/preeny \
	&& make -C src && mv *-*-* bin64 \
	&& PLATFORM=-m32 setarch i686 make -C src && mv *-*-* bin32 \
	&& popd \
	&& rm -rf /opt/*/.git ~/.cache

RUN git clone https://github.com/sqlmapproject/sqlmap.git /opt/sqlmap \
	&& ln -s /opt/sqlmap/sqlmap.py /usr/local/bin/sqlmap \
	&& ln -s /opt/sqlmap/sqlmapapi.py /usr/local/bin/sqlmapapi \
	&& git clone https://github.com/epinna/weevely3.git /opt/weevely3 \
	&& pip install -r /opt/weevely3/requirements.txt \
	&& ln -s /opt/weevely3/weevely.py /usr/local/bin/weevely \
	&& rm -rf /opt/*/.git ~/.cache

COPY root /root
VOLUME /root
WORKDIR /root

EXPOSE 1337
EXPOSE 1337/udp

CMD ["bash"]
