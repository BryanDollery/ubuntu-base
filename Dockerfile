from ubuntu:latest

run apt-get update && \
    apt-get install -y curl vim jq unzip git wget build-essential make dirmngr iputils-ping net-tools python python-dev python-pip autoconf automake bison libffi-dev libgdbm-dev libncurses5-dev libsqlite3-dev libtool libyaml-dev pkg-config sqlite3 zlib1g-dev libgmp-dev libreadline-dev libssl-dev netcat nmap tcpdump dnsutils groff software-properties-common apt-transport-https && \
    mkdir -p /tmp && \
    export DEBIAN_FRONTEND=noninteractive DEBCONF_NONINTERACTIVE_SEEN=true && \
    echo "tzdata tzdata/Areas select Europe" > /tmp/tzdata.txt && \
    echo "tzdata tzdata/Zones/Europe select London" >> /tmp/tzdata.txt && \
    debconf-set-selections /tmp/tzdata.txt && \
    curl -sSLk https://deb.nodesource.com/setup_13.x | bash - && \
    apt autoclean && \
    apt-get clean && \
    apt autoremove && \
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh)" && \
    echo ". /root/.bash_alises" >> .bash_profile && \
    echo "alias ll='ls -gAlFh'" >> /root/.bash_aliases.sh && \
    curl -fsSL get.docker.com | bash

