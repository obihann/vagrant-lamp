# Configure apt to update for installation of every package
Class['apt::update'] -> Package <| provider == 'apt' |>

# Include our modules
include apt
include base
include php
include apache::php
include mysql
