https://github.com/tomargit/clinical-trial-hyperledger.git

echo "# clinical-trial-hyperledger" >> README.md
git init
git add README.md
git commit -m "first commit"
git remote add origin https://github.com/tomargit/clinical-trial-hyperledger.git
git push -u origin master


git remote add origin https://github.com/tomargit/clinical-trial-hyperledger.git
git push -u origin master



************To deploy this application, Use below command*****************

composer runtime install --card PeerAdmin@hlfv1 --businessNetworkName clinical-trial-hyperledger

composer network start --card PeerAdmin@hlfv1 --networkAdmin admin --networkAdminEnrollSecret adminpw --archiveFile clinical-trial-hyperledger-
network.bna --file clinicaltrialnetworkadmin.card

composer card import --file clinicaltrialnetworkadmin.card 

composer network ping --card admin@clinical-trial-hyperledger



***********To update already deployed application, Use belopw command************

composer archive create --sourceType dir --sourceName . -a clinical-trial-hyperledger-network.bna

composer network update -a clinical-trial-hyperledger-network.bna -c admin@clinical-trial-hyperledger



