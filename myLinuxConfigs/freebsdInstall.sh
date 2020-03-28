## Partitioning an SSD
gpart create -s gpt ada0
gpart add -t freebsd-boot -s 512k -a4k -l ssdboot ada0
gpart bootcode -b /boot/pmbr -p /boot/gptboot -i1 ada0
gpart add -t freebsd-ufs -l ssdrootfs -b 1m -s 2g ada0
gpart add -t freebsd-ufs -l ssdvarfs -a 1m -s 2g ada0
gpart add -t freebsd-ufs -l ssdusrfs -a 1m ada0
newfs -U -t /dev/gpt/ssdrootfs
newfs -U -t /dev/gpt/ssdvarfs
newfs -U -t /dev/gpt/ssdusrfs
## /etc/fstab
# Device                Mountpoint      FStype  Options         Dump    Pass#
/dev/gpt/ssdrootfs      /               ufs     rw              1       1
/dev/gpt/ssdvarfs       /var            ufs     rw              2       2
tmpfs                   /tmp            tmpfs   rw,mode=01777   0       0
/dev/gpt/ssdusrfs       /usr            ufs     rw              2       2

## swap on SSD
mkdir /usr/swap
dd if=/dev/zero of=/usr/swap/swap bs=128k count=32768
## /etc/fstab
# Device        Mountpoint      FStype  Options                         Dump    Pass#
md99            none            swap    sw,file=/usr/swap/swap,late     0       0
