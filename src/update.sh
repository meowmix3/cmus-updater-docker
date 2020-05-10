#!/bin/sh
cmus-remote -C clear
cmus-remote -C "add /mnt/music"
cmus-remote -C "update-cache -f"
