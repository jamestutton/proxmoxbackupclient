#!/bin/bash
export PBS_PASSWORD=yourPassword
export PBS_REPOSITORY=yourUsername@pbs@yourHostname:yourDatastore
export PBS_FINGERPRINT=yourFingerprint
proxmox-backup-client backup root.pxar:/host-rootfs/
