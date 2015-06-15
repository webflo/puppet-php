# Launches a PHP FPM service running PHP 5.6.10
# Installs PHP 5.6.10 if it doesn't already exist
#
# Usage:
#
#     include php::fpm::5_6_10
#
class php::fpm::5_6_10 {
  php::fpm { '5.6.10': }
}
