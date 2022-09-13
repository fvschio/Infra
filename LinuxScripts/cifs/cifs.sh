mount -t cifs -o username=<user>,password=<'password'>,domain=<domain> //<ip>/<dir> /mnt/<dir>
rm -rf /mnt/<dir>/*
cp -a /<dir>/* /mnt/<dir>
umount /mnt/<dir>
