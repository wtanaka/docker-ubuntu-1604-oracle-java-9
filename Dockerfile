FROM wtanaka/ubuntu-1604:latest
MAINTAINER http://wtanaka.com/dockerfiles
RUN apt-get update \
  && apt-get -y install software-properties-common \
  && add-apt-repository ppa:webupd8team/java \
  && apt-get update \
  && echo oracle-java9-installer shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections \
  && apt-get -y install oracle-java9-installer \
  && apt-get -y remove software-properties-common \
  && apt-get clean autoclean -y \
  && apt-get autoremove -y \
  && rm -rf /var/lib/apt \
    /var/lib/dpkg/arch \
    /var/lib/dpkg/available \
    /var/lib/dpkg/cmethopt \
    /var/lib/dpkg/diversions \
    /var/lib/dpkg/diversions-old \
    /var/lib/dpkg/lock \
    /var/lib/dpkg/parts \
    /var/lib/dpkg/statoverride \
    /var/lib/dpkg/status-old \
    /var/lib/dpkg/triggers \
    /var/lib/cache \
    /var/lib/log
