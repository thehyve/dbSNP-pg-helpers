#!/bin/bash -e

mdadm --create --verbose /dev/md0 --level=stripe --raid-devices=3 /dev/xvdb /dev/xvdc /dev/xvdd
mkfs.ext4 /dev/md0
mkdir /mnt/data
mount /dev/md0 /mnt/data/
