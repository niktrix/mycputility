apt-get install -y software-properties-common
add-apt-repository ppa:webupd8team/java
apt-get update
echo oracle-java7-installer shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections
apt-get -y install oracle-java7-installer && apt-get clean
update-alternatives --display java
echo "JAVA_HOME=/usr/lib/jvm/java-7-oracle" >> /etc/environment
