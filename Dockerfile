FROM fedora:24

MAINTAINER Marcus Krause <marcus#exp2016@t3sec.info>

EXPOSE 4730

RUN dnf -y update; dnf clean all
RUN dnf -y install gearmand; dnf clean all

VOLUME ["/gearman"]
RUN ["/bin/touch", "/gearman/gearmand.log"]

ENTRYPOINT ["/usr/sbin/gearmand", "--job-retries=5", "--job-handle-prefix=t3census", "--log-file=/gearman/gearmand.log", "--threads=4", "--verbose=NOTICE"]
