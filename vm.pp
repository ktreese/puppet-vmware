vsphere_vm { '/<datacenter>/vm/<virtual_server_name>':
  ensure        => present,
  source        => '/<datacenter>/vm/<template_name>',
  source_type   => 'template',
  resource_pool => '192.168.1.2',
  create_command => {
    command => 'touch /tmp/test',
    working_directory => '/',
    user => 'root',
    password => 'password',
  },
}
