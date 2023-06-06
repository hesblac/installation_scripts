apt-get update -y

sudo apt-get update -y
#sudo apt-get install openjdk-17-jdk -y
sudo apt install openjdk-8-jdk

java -version

echo "Install Nexus"
useradd -M -d /opt/nexus -s /bin/bash -r nexus
echo "nexus ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/nexus
mkdir /opt/nexus
wget 	https://download.sonatype.com/nexus/3/nexus-3.52.0-01-unix.tar.gz 
tar xzf nexus-3.52.0-01-unix.tar.gz -C /opt/nexus --strip-components=1
chown -R nexus:nexus /opt/nexus


# sudo sed -i 's/\.\./\./g' /opt/nexus/bin/nexus.vmoptions
# sudo sh -c 'echo "run_as_user=\"nexus\"" > /opt/nexus/bin/nexus.rc'

# sudo vim /opt/nexus/bin/nexus.vmoptions
# sudo vim /opt/nexus/bin/nexus.rc
# sudo -u nexus /opt/nexus/bin/nexus start
# sudo cat /opt/nexus/sonatype-work/nexus3/admin.password 





```
https://www.howtoforge.com/how-to-install-and-configure-nexus-repository-manager-on-ubuntu-20-04/
```
