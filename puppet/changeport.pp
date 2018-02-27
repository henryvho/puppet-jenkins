class changeport {
    notify { 'change port 8000':}
    file { '/etc/default/jenkins':
    source => '/vagrant/jenkins',
    }
   #service { 'jenkins':
   #   ensure    => running,
   #   enable    => true,
   #   subscribe => File['/etc/default/jenkins'],
   # }
 }

