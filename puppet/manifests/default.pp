# Configure apt to update for installation of every package
Class['apt::update'] -> Package <| provider == 'apt' |>

# Include our modules
class { 'puppi':
  install_dependencies => false,
}
include apt
include base
class { 'redis': }
include php

apt::ppa { "ppa:ondrej/apache2": }->
apt::key { "ppa:ondrej/apache2": 
  id => "14AA40EC0831756756D7F66C4F4EA0AAE5267A6C",
}->
Exec['apt_update'] ->
class { "apache": } ->
package { "libapache2-mod-php5.6":
  ensure => "present"
}

include mysql
include composer
