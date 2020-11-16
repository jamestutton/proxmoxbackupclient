# proxmoxbackupclient
Unnofficial Docker Image for Proxmox Backup Server Client

```
# docker-compose.yml
version: '3'
services:
  proxmox-backup-client:
    build:
      context: https://github.com/joBr99/proxmoxbackupclient.git
      dockerfile: Dockerfile
    container_name: proxmox-backup-client
    hostname: hostname-backup
    environment:
      - PBS_PASSWORD=your_password
      - PBS_REPOSITORY=yourUsername@pbs@yourHostname:yourDatastore
      - PBS_FINGERPRINT=yourFingerprint
    command: 'proxmox-backup-client backup root.pxar:/host-rootfs/'
    volumes:
      - /:/host-rootfs:ro
      - ./backup-script.sh:/backup-script.sh
 ```     
      
 Backup can be started by running "docker-compose up"
