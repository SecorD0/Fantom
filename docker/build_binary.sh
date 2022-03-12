#!/bin/bash
. <(wget -qO- https://raw.githubusercontent.com/SecorD0/utils/main/installers/golang.sh)
sudo apt-get install git build-essential tmux -y
git clone https://github.com/Fantom-foundation/go-opera.git
cd go-opera/
git checkout release/1.1.0-rc.4
make
cd ..
mv go-opera/build/opera opera
rm -rf go-opera/
