# Ensure inspector service is running.
class inspector::service inherits inspector {
  case $::operatingsystem {
    'centos': {
      service { 'awsagent':
        ensure => running,
        name => 'awsagent',
      }
    }
    default: { fail("The ${module_name} module is not supported on ${::osfamily}/${::operatingsystem}.") }
  }
}

