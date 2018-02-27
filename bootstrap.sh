#!/usr/bin/env bash

#install sysv-rc-conf 
sudo apt-get install sysv-rc-conf
alias chkconfig=sysv-rc-conf

sudo apt-get -y install systemd

# copy hosts file
cp /vagrant/bootstrap/hosts /etc/hosts

# install puppet for ubuntu 16 release
curl -O https://apt.puppetlabs.com/puppetlabs-release-pc1-xenial.deb
sudo dpkg -i puppetlabs-release-pc1-xenial.deb
sudo apt-get update

# install puppet server
#sudo apt-get -y install puppet-common
sudo apt-get -y install puppetserver

# open firewall
sudo ufw allow 8140
sudo ufw allow 8000

# copy puppet configs
cp /vagrant/bootstrap/puppetserver /etc/default/puppetserver
cp /vagrant/bootstrap/puppet.conf /etc/puppetlabs/puppet/puppet.conf

# start puppetserver
# sudo systemctl status puppetserver
sudo systemctl start puppetserver
sudo sudo systemctl enable puppetserver

#export PATH=$PATH:/opt/puppetlabs/bin
# update profile for puppet
cp /vagrant/bootstrap/.profile /home/vagrant/.profile
cp /vagrant/bootstrap/.profile /root/.profile

# start puppet agent
# sudo systemctl status puppet
# sudo apt-get -y install puppet
sudo systemctl start puppet
sudo systemctl enable puppet

# sudo systemctl | grep running | grep puppet
# sudo puppet agent -t

# install jenkins module
sudo /opt/puppetlabs/bin/puppet module install /vagrant/bootstrap/puppet-jenkins-master.tar.gz

# update site.pp, add change-port and restart classes to jenkins modules folder
cp /vagrant/puppet/site.pp /etc/puppetlabs/code/environments/production/manifests/site.pp
cp /vagrant/puppet/changeport.pp /etc/puppetlabs/code/environments/production/manifests/
cp /vagrant/puppet/restart.pp /etc/puppetlabs/code/environments/production/manifests/

# push module to agent
sudo /opt/puppetlabs/bin/puppet agent -t

# stop jenkins to change port 8000
# sudo systemctl stop jenkins
# cp /vagrant/bootstrap/jenkins /etc/default/jenkins
# sudo systemctl restart jenkins
# sudo systemctl enable jenkins

# puppet module list
# ps axf 
# netstat -an | grep LISTEN
