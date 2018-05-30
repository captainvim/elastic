sudo apt-get install openjdk-8-jre-headless

mkdir pkg
cd pkg

wget https://artifacts.elastic.co/downloads/kibana/kibana-6.2.4-amd64.deb
shasum -a 512 kibana-6.2.4-amd64.deb
sudo dpkg -i kibana-6.2.4-amd64.deb