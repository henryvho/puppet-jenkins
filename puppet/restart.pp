class restart {
    notify { 'restarting jenkins':}

  exec { 'restart jenkins':
    command => '/bin/systemctl restart jenkins',
  }

}
