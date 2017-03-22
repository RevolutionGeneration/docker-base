FROM debian:jessie

# runtime dependencies
RUN apt-get update && apt-get install -y --no-install-recommends \
    git \
    locales \
    cron \
    vim-nox \
    rsyslog \
    openssh-client \
	&& rm -rf /var/lib/apt/lists/*


# set lang to en_GB
RUN sed -i 's|# en_GB.UT|en_GB.UT|' /etc/locale.gen && \
    locale-gen && \
    DEBIAN_FRONTEND=noninteractive dpkg-reconfigure locales

ENV LANG en_GB.UTF-8
ENV LC_ALL en_GB.UTF-8
ENV LANGUAGE en_GB.UTF-8

CMD service cron start && tail -F /var/log/syslog

