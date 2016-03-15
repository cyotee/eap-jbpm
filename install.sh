#!/usr/bin/env bash
INSTALL_PATH=installs/
INSTALL_ARTIFACT=jbpm.zip

echo "Changing to installs directory"
cd installs/
echo `pwd`

unzip $INSTALL_ARTIFACT