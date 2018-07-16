#!/bin/sh

cur_dir=`pwd`

apt-get update
apt-get upgrade

apt-get install -y create_ap \
	ntp ntpdate \
	sshfs

# python
apt-get install python3 python3-pip

# ruby
apt-get install ruby
gem install bundler

# netdata
git clone https://github.com/firehol/netdata
cd netdata
./netdata-installer.sh
cd $cur_dir

# camera
apt-get install python3-picamera

# motion
apt-get install motion

# streamer
apt-get install cmake libjpeg8-dev
git clone https://github.com/jacksonliam/mjpg-streamer.git
cd mjpeg-streamer/mjpg-streamer-experimental
make
make install
cd $cur_dir

# butterfly
pip3 install butterfly
