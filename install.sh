#!/usr/bin/env bash
INSTALL_PATH=installs/
INSTALL_ARTIFACT=jbpm.zip

echo "Changing to installs directory"
cd installs/
echo `pwd`

if [ ! -d jboss-eap-6.4/ ];
then
    unzip $INSTALL_ARTIFACT
fi