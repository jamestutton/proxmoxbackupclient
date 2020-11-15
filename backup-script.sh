#!/bin/bash
#export PBS_PASSWORD=7907b1bc-f55b-4533-af81-a11c4eb8718c
export PBS_PASSWORD=admin
export PBS_REPOSITORY=admin@pbs@10.146.4.1:usb-crypt
export PBS_FINGERPRINT=a0:49:9a:95:a6:bf:31:f0:6f:81:ac:c3:c5:ed:58:88:88:af:89:73:67:b0:2a:21:00:77:c0:47:8e:f6:58:dc
proxmox-backup-client backup root.pxar:/host-rootfs/
