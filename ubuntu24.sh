#!/bin/bash

sudo apt update && sudo apt upgrade -y && sudo apt install byobu -y && sudo apt install neofetch -y && sudo apt install zram-tools -y && echo -e "ALGO=zstd\nPERCENT=100" | sudo tee -a /etc/default/zramswap && sudo service zramswap reload && sudo apt update && sudo apt install openssh-server screen python3 python-is-python3 git default-jdk adb fastboot bc bison \
build-essential curl flex g++-multilib gcc-multilib gnupg gperf imagemagick lib32ncurses-dev \
lib32readline-dev lib32z1-dev liblz4-tool libncurses-dev libsdl1.2-dev libssl-dev \
libxml2 libxml2-utils lzop pngcrush rsync schedtool squashfs-tools xsltproc yasm zip zlib1g-dev \
libtinfo6 libncurses6 -y && wget https://www.python.org/ftp/python/2.7.18/Python-2.7.18.tgz && sudo tar xzf Python-2.7.18.tgz && cd Python-2.7.18 && sudo ./configure --enable-optimizations && sudo make altinstall && cd && sudo ln -sfn '/usr/local/bin/python2.7' '/usr/bin/python2' && mkdir ~/bin && PATH=~/bin:$PATH && cd ~/bin && curl http://commondatastorage.googleapis.com/git-repo-downloads/repo > ~/bin/repo && chmod a+x ~/bin/repo && git clone  https://github.com/Adarsh0127-Elite/scripts.git scripts && cd scripts && bash setup/android_build_env.sh && cd && sudo rm -rf *
