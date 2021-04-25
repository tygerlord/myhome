FROM debian:buster-slim

RUN mkdir -p /app
WORKDIR /app

COPY entrypoint.sh .

# ssh
ENV SSH_USER_PASSWD "pi:pi"
RUN export DEBIAN_FRONTEND=noninteractive \ 
		&& apt-get update \
		&& apt-get install -y --no-install-recommends ca-certificates \
		&& apt-get install -y --no-install-recommends dialog \
		&& apt-get update \
		&& apt-get install -y --no-install-recommends bash-completion \
		&& apt-get install -y --no-install-recommends openssh-server \
		&& apt-get install -y --no-install-recommends shellinabox \
		&& apt-get install -y --no-install-recommends git \
		&& apt-get install -y --no-install-recommends vim \
		&& apt-get install -y --no-install-recommends vim-youcompleteme \
		&& apt-get install -y --no-install-recommends cron \
		&& apt-get install -y --no-install-recommends rsync \
		&& apt-get install -y --no-install-recommends rclone \
		&& apt-get install -y --no-install-recommends avahi-daemon \
		&& apt-get install -y --no-install-recommends avahi-utils \
		&& apt-get install -y --no-install-recommends avahi-discover \
		&& apt-get install -y --no-install-recommends libnss-mdns \
		&& apt-get install -y --no-install-recommends iputils-ping \
		&& useradd pi --create-home \
		&& echo "$SSH_USER_PASSWD" | chpasswd  

EXPOSE 4200

ENTRYPOINT ["/bin/bash", "/app/entrypoint.sh"]


