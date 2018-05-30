#wget -qO - https://artifacts.elastic.co/GPG-KEY-elasticsearch | sudo apt-key add -
#sudo apt-get install apt-transport-https
#echo "deb https://artifacts.elastic.co/packages/6.x/apt stable main" | sudo tee -a /etc/apt/sources.list.d/elastic-6.x.list
#sudo apt-get update && sudo apt-get install elasticsearch

sudo apt-get install openjdk-8-jre-headless
#Downloading manually
wget https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-6.2.4.deb
wget https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-6.2.4.deb.sha512
shasum -a 512 -c elasticsearch-6.2.4.deb.sha512 
sudo dpkg -i elasticsearch-6.2.4.deb

cp -f /vagrant_data/elasticsearch.yml /etc/elasticsearch/
#globo-es01
#10.0.2.15
#private: 192.168.20.100
#public: 192.168.10.243 

sysctl -w vm.max_map_count=262144
service elasticsearch start
service elasticsearch status
systemctl enable elasticsearch

#curl http://SERVER_IP:9200


