# Launches a PHP FPM service running PHP 5.3.26
# Installs PHP 5.3.26 if it doesn't already exist
#
# Usage:
#
#     include php::fpm::5_3_26
#
class php::fpm::5_3_26 {
  php::fpm { '5.3.26': }
}
