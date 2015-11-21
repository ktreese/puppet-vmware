vsphere_vm { '/REESE/vm/kris':
  ensure             => 'running',
  source             => '/REESE/vm/redhat6.5',
  source_type        => 'vm',
  resource_pool      => '192.168.1.2',
  customization_spec => 'puppet_vsphere_vm',
  create_command => {
    command => '/bin/touch',
    arguments => '/tmp/test',
    working_directory => '/',
    user => 'root',
    password => 'password',
  },
}
