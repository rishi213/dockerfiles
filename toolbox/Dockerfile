FROM nightling/buildpack

RUN yum -y install \
	bind-utils \
	binwalk \
	checksec \
	diffstat \
	dnsenum \
	foremost \
	gdb \
	goaccess \
	hexedit \
	iperf \
	iputils \
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
	sslscan \
	sslsplit \
	strace \
	subnetcalc \
	tcpdump \
	tcpreplay \
	telnet \
	tor \
	valgrind \
	vim-enhanced \
	w3m \
	whois \
	zmap \
	&& yum clean all

RUN pip install capstone ropgadget pwntools \
	&& git clone https://github.com/zachriggle/peda.git /opt/peda \
	&& git clone https://github.com/epinna/weevely3.git /opt/weevely3 \
	&& pip install -r /opt/weevely3/requirements.txt \
	&& ln -s /opt/weevely3/weevely.py /usr/local/bin/weevely

COPY root /root
VOLUME /root
WORKDIR /root

EXPOSE 1337
EXPOSE 1337/udp

CMD ["bash"]
