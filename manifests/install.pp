# Install the inspector package
class aws_inspector::install  {
  if $::operatingsystem == 'centos' {
        exec { 'download_inspector-agent':
        command => "/bin/wget -N https://inspector-agent.amazonaws.com/linux/latest/install -O /opt/inspector-install.sh",
        path    => '/bin:/usr/bin:/usr/local/bin:/usr/sbin',
        creates => '/opt/inspector-install.sh',
        } ~>
        file { '/opt/inspector-install.sh':
        mode => '0755',
        } ~>
        exec { 'install_inspector-agent':
        command => '/opt/inspector-install.sh',
        path    => '/sbin:/bin:/usr/bin:/usr/local/bin:/usr/sbin',
        refreshonly => true,
       }

     }
}
  

     
 


