# Launches a PHP FPM service running PHP 5.4.42
# Installs PHP 5.4.42 if it doesn't already exist
#
# Usage:
#
#     include php::fpm::5_4_42
#
class php::fpm::5_4_42 {
  php::fpm { '5.4.42': }
}
