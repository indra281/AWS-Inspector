# Ensure inspector service is running.
class aws-inspector::service {
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

