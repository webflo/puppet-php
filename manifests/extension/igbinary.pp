# Installs a php extension for a specific version of php.
#
# Usage:
#
#     php::extension::igbinary { 'igbinry for 5.4.10':
#       php       => '5.4.10',
#     }
#
define php::extension::igbinary(
  $php,
  $version = '1.1.1',
) {
  require php::config
  # Require php version eg. php::5-4-10
  # This will compile, install and set up config dirs if not present
  require join(['php', join(split($php, '[.]'), '_')], '::')

  $extension = 'igbinary'
  $package_name = "igbinary-${version}"
  $url = "http://pecl.php.net/get/igbinary-${version}.tgz"

  # Final module install path
  $module_path = "${php::config::root}/versions/${php}/modules/${extension}.so"

  php_extension { $name:
    extension      => $extension,
    version        => $version,
    package_name   => $package_name,
    package_url    => $url,
    homebrew_path  => $boxen::config::homebrewdir,
    phpenv_root    => $php::config::root,
    php_version    => $php,
    cache_dir      => $php::config::extensioncachedir,
  }

  # Add config file once extension is installed

  file { "${php::config::configdir}/${php}/conf.d/${php::config::configprefix}${extension}.ini":
    content => template("php/extensions/${extension}.ini.erb"),
    require => Php_extension[$name],
  }
}
