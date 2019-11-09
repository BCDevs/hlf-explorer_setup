# Backup and Restore Hyperledger Fabric Network

#### Backup Files
1. Crypto certificates of all participants (crypto-config directory)

2.Channel and genesis Configuration files (config directory)

3. Peer file system (can be found in peer container ```/var/hyperledger/production/``` )

4. Orderer file system(can be found in ```/var/hyperledger/production/orderer/``` )


If we could mount these files in exact locations as they are in previously, we are done. That all We've done in ```backup.sh``` and ```restore.sh```..

### Quick Test

```
cd client 
cd ./start.sh #Run Some Normal operations
```
#### Explorer-setup

#1. prereqs (pulling and starting docker image)

docker pull salmandabbakuti/hlf-explorer_setup:1.0

docker run --name hlf-explorer --privileged -it -p 8080:8080 salmandabbakuti/hlf-explorer_setup:1.0

#2. modify connection profile according network

#3. ./start.sh (blockchain-explorer)


