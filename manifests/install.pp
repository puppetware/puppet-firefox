# == Class: firefox::install
#
# Installs Firefox for OS X.
#
# === Authors
#
# Ryan Skoblenick <ryan@skoblenick.com>
#
# === Copyright
#
# Copyright 2013 Ryan Skoblenick.
#
class firefox::install {
  $language = $firefox::language
  $version = $firefox::version

  $source = $::osfamily ? {
    'Darwin' => "https://ftp.mozilla.org/pub/mozilla.org/firefox/releases/${version}/mac/${language}/Firefox%20${version}.dmg",
  }

  package {"Firefox-${version}":
    ensure => installed,
    source => $source,
    provider => appdmg,
  }
}
