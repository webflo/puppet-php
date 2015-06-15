# Launches a PHP FPM service running PHP 5.5.26
# Installs PHP 5.5.26 if it doesn't already exist
#
# Usage:
#
#     include php::fpm::5_5_26
#
class php::fpm::5_5_26 {
  php::fpm { '5.5.26': }
}
