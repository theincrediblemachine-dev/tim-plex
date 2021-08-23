from registry.hub.docker.com/plexinc/pms-docker 
RUN apt-get update
RUN apt-get install unzip 
RUN apt-get install zip 
RUN curl -O https://downloads.rclone.org/rclone-current-linux-amd64.zip
RUN unzip rclone-current-linux-amd64.zip
RUN cd rclone-*-linux-amd64 && cp rclone /usr/bin/
RUN chown root:root /usr/bin/rclone
RUN chmod 755 /usr/bin/rclone
RUN apt-get -y install fuse
COPY 10-mount-drives /etc/cont-init.d
RUN chmod 755 /etc/cont-init.d/10-mount-drives
RUN zip -r -ll /linuxfiles.zip /etc/cont-init.d
RUN unzip -o /linuxfiles.zip -d .
