vsphere_vm { '/REESE/vm/kris':
  ensure             => 'running',
  source             => '/REESE/vm/redhat6.5',
  source_type        => 'template',
  resource_pool      => '192.168.1.2',
  customization_spec => 'puppet_vsphere_vm',
  create_command => {
    command => '/usr/bin/curl',
    arguments => '-k https://puppetmaster:8140/packages/current/install.bash | /bin/bash >/tmp/agent.install.log 2>&1',
    working_directory => '/',
    user => 'root',
    password => 'password',
  },
}
