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
class { 'apache': }
include mysql
include composer
