from registry.hub.docker.com/plexinc/pms-docker
run apt-get update
run apt-get install unzip
run curl -O https://downloads.rclone.org/rclone-current-linux-amd64.zip 
run unzip rclone-current-linux-amd64.zip 
run cd rclone-*-linux-amd64 && cp rclone /usr/bin/ 
run chown root:root /usr/bin/rclone 
run chmod 755 /usr/bin/rclone
run apt-get -y install fuse