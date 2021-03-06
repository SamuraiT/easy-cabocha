sudo apt-get -y update
sudo apt-get -y install g++
sudo apt-get -y install libiconv-hook*
sudo apt-get -y install locales

cat bashrc >> ~/.bashrc
source ~/.bashrc

tar -xzf mecab-0.996.tar.gz
cd mecab-0.996
./configure --enable-utf8-only
make
sudo make install
cd ..

tar -xzf mecab-ipadic-2.7.0-20070801.tar.gz 
cd mecab-ipadic-2.7.0-20070801
./configure --with-charset=utf8
make
sudo make install
cd ..

tar -xzf CRF++-0.58.tar.gz
cd CRF++-0.58
./configure
make 
sudo make install
sudo ldconfig
cd ..

tar xvjf cabocha-0.68.tar.bz2
cd cabocha-0.68
./configure --with-charset=UTF8 --with-posset=IPA
make
sudo make install
sudo ldconfig
cd ..
cabocha
