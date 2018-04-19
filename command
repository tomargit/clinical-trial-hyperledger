
export FABRIC_VERSION=hlfv1

~/fabric-tools/teardownFabric.sh
rm -fr ~/.composer
rm -rf ~/.composer-connection-profiles/hlfv1
rm -f ~/.composer-credentials/*
~/fabric-tools/teardownAllDocker.sh
~/fabric-tools/startFabric.sh 
~/fabric-tools/createPeerAdminCard.sh



---------------------------------------------------

composer runtime install --card PeerAdmin@hlfv1 --businessNetworkName clinical-trial-hyperledger
composer network start --card PeerAdmin@hlfv1 --networkAdmin admin --networkAdminEnrollSecret adminpw --archiveFile clinical-trial-hyperledger-network.bna --file clinicaltrialnetworkadmin.card
composer card import --file clinicaltrialnetworkadmin.card 
composer network ping --card admin@clinical-trial-hyperledger

----------------------------------------------------

composer archive create --sourceType dir --sourceName . -a clinical-trial-hyperledger-network.bna
composer network update -a clinical-trial-hyperledger-network.bna -c admin@clinical-trial-hyperledger
