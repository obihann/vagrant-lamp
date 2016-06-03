# Vagrant LAMP

A Vagrant box based containing Ubuntu linux, Apache, MySQL and PHP. Provisioned with puppet and ready to deploy. 

Fork us:   
[https://github.com/obihann/vagrant-lamp/](https://github.com/obihann/vagrant-lamp/)

Download the latest box:   
[https://atlas.hashicorp.com/obihann/boxes/lamp/](https://atlas.hashicorp.com/obihann/boxes/lamp/)

Install the latest box:   
```$ vagrant init obihann/lamp; vagrant up --provider virtualbox```

## Useful Info

### Software Versions

- Ubuntu 12.04 LTS
- puppet 3.8.7
- git 1.7.9.5
- python 2.7.3
- perl 5.14.2
- ruby 1.8.7
- MySQL  Ver 14.14 Distrib 5.5.49
- Apache 2.4.20
- PHP 5.6.22-3

### Base Image

- [hashicorp/precise64](https://atlas.hashicorp.com/hashicorp/boxes/precise64)

### Puppet Modules

- [puppetlabs/puppetlabs-apt](https://github.com/puppetlabs/puppetlabs-apt)
- [obihann/puppet-apache2](https://bitbucket.org/obihann/puppet-apache)
- [https://github.com/tPl0ch/puppet-composer](https://github.com/tPl0ch/puppet-composer)
- [https://github.com/puphpet/puppetlabs-mysql](https://github.com/puphpet/puppetlabs-mysql)
- [https://github.com/fsalum/puppet-redis](https://github.com/fsalum/puppet-redis)
- [https://github.com/example42/puppi](https://github.com/example42/puppi)
- [https://github.com/puphpet/puppetlabs-mysql](https://github.com/puphpet/puppetlabs-mysql)
- [obihann/puppet-php5](https://bitbucket.org/obihann/puppet-php)
- [obihann/puppet-mysql](https://bitbucket.org/obihann/puppet-mysql)

### PHP Packages

- php-mysql
- php-imagick
- php-mcrypt
- php-pear
- php-curl
- php-xml
- php-gd
- php-sqlite3

## Changelog

- 0.0.3 - fixing issue with `Vagrantfile` config attempting to load puppet modules that didn't exist
- 0.0.2 - update of `Vagrantfile` to create a `www` folder that is a symlink to `/var/www`

##License
This tool is protected by the [GNU General Public License v2](http://www.gnu.org/licenses/gpl-2.0.html).

Copyright [Jeffrey Hann](http://jeffreyhann.ca/) 2016
