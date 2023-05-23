#!/data/data/com.termux/files/usr/bin/bash
#
# Created by: beefproject
# Brought to you by: lazyh4cks

echo Installing dependences...
sleep 1
pkg install curl wget libyaml libxslt espeak ruby python nodejs autoconf automake bison clang cmake libffi libgmp libtool make patch pkg-config ruby2-dev
git clone https://github.com/beefproject/beef
echo Installing Gem...
sleep 1
gem install sqlite3 -- --with-cflags="-Wno-error=implicit-function-declaration"
gem install nokogiri -- --use-system-libraries
mv script.sh ./beef/
cd beef && rm -rf install
bash script.sh



