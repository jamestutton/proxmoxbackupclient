# proxmoxbackupserver
Proxmox Backup Server - Docker Image

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
        volumes:
          - /:/host-rootfs:ro
          - ./backup-script.sh:/backup-script.sh
 ```     
      
 Backup can be started by running "docker-compose up"
