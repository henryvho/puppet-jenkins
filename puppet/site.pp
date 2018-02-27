node 'puppetmaster' { 
   include jenkins
   class { 'changeport': }
   #class { 'restart': }
}

