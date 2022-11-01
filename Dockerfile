from registry.hub.docker.com/plexinc/pms-docker 
RUN apt-get update \
    apt-get install unzip \
    apt-get install zip \
    curl -O https://downloads.rclone.org/rclone-current-linux-amd64.zip \
    unzip rclone-current-linux-amd64.zip \
    cd rclone-*-linux-amd64 && cp rclone /usr/bin/ \
    chown root:root /usr/bin/rclone \
    chmod 755 /usr/bin/rclone \
    apt-get -y install fuse
COPY 10-mount-drives /etc/cont-init.d
RUN chmod 755 /etc/cont-init.d/10-mount-drives \
    zip -r -ll /linuxfiles.zip /etc/cont-init.d \
    unzip -o /linuxfiles.zip -d .
