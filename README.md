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
 ```     
      
Create your docker-compose.yml file and run docker-compose up to deploy the container once.

After the container is deployed you an run the backup periodicly by a cronjob:
```
# m h  dom mon dow   command
42 20 * * * docker-compose -f /opt/containers/proxmox-backup-client/docker-compose.yml run proxmox-backup-client
```
