rm -rf /tmp/fabric-client-kvs_peerOrg*

mkdir -p ./logs/app & mkdir -p ./logs/db & mkdir -p ./logs/console

LOG_CONSOLE_PATH="logs/console/console-$(date +%Y-%m-%d).log"

echo "************************************************************************************"
echo "**************************** Hyperledger Explorer **********************************"
echo "************************************************************************************"
echo "***** Please check the log [$LOG_CONSOLE_PATH] for any error *****"
echo "************************************************************************************"

export DISCOVERY_AS_LOCALHOST=true
node main.js name - hyperledger-explorer >>$LOG_CONSOLE_PATH 2>&1 &

find ./logs/app -mtime +7 -type f -delete & find ./logs/db -mtime +7 -type f -delete & find ./logs/console -mtime +7 -type f -delete



