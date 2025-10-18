#! /bin/sh -
apt-get install curl git vim bat gh;
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
if [ -f "~/.config/gh/hosts.yml" ];
then
  gh auth login
fi
#wget http://ftp.gnu.org/pub/gnu/emacs/emacs-30.2.tar.gz
apt-get install gzip make cmake;
#tax xjvf emacs-30.2.tar.gz
#cd emacs-30.2
#./configure
#make
#sudo make install
apt-get install htop screen man-db;
# upload public key to github.
cd;
rm -rf ~/zshconf;
git clone git@github.com:AlbaroPereyra22/zshconf.git
chmod u+x ~/zshconf/installer.sh
cd zshconf
./installer.sh
rm -rf ~/screenconf
git clone git@github.com:AlbaroPereyra/screenconf.git
mv screenconf/.screenrc ~;
apt-get install clang jsoncpp ossp-uuid zlib openssl@1.1 c-ares boost sqlite mariadb hiredis;
git clone https://github.com/an-tao/drogon;
cd drogon;
git submodule update --init;
mkdir build;
cd build;
cmake -DCMAKE_BUILD_TYPE=Release ..;
install && sudo make install;
