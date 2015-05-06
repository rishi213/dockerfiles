FROM nightling/base

RUN yum -y install perl-JSON-Any perl-LWP-Protocol-https perl-Net-OAuth \
	perl-Net-Twitter-Lite perl-POE-Filter-IRCD perl-URI-Find \
	&& yum clean all

ADD source /opt/tircd
ADD tircd.cfg /opt/tircd/

EXPOSE 6667

USER nobody
WORKDIR /opt/tircd
CMD ["perl", "tircd.pl"]
