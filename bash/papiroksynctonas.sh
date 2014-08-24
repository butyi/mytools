#!/bin/bash
# copies files from local papirok to already mounted remote NAS
# It does not support "ekezetes betuk"
rsync -r --progress --size-only /home/butyi/Dokumentumok/papirok/* /home/butyi/nas/SAJAT/ARHIV/papirok
