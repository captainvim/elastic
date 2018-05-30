#install java 8
sudo apt-get install openjdk-8-jre-headless

# add GPG signing key
wget -qO - https://artifacts.elastic.co/GPG-KEY-elasticsearch | sudo apt-key add -

# install apt-transport-https
sudo apt-get install apt-transport-https

# add package into source list
echo "deb https://artifacts.elastic.co/packages/6.x/apt stable main" | sudo tee -a /etc/apt/sources.list.d/elastic-6.x.list

# install latest logstsh
sudo apt-get update && sudo apt-get install logstash

cd /usr/share/logstash
ll

logstash -e 'input { stdin {} } output { {hosts => ["192.68.20.100:9200"]} }'

systemctl enable logstash
service logstash start