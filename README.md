docker-etcd-registrator Cookbook
================================
Chef cookbook for the docker-etcd-registrator for Vulcand made by @psi-4ward.

Requirements
------------
- `git` - pulls the fresh version from git since the npm published one is outdated
- `nodejs`

Attributes
----------
TODO: At the moment only the install part is done

#### docker-etcd-registrator::default
<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Resource</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['docker-etcd-registrator']['conf_dir']</tt></td>
    <td>String</td>
    <td><tt>:conf_dir</tt></td>
    <td>...</td>
    <td><tt>...</tt></td>
  </tr>
  <tr>
    <td><tt>['docker-etcd-registrator']['binary']</tt></td>
    <td>String</td>
    <td><tt>:binary</tt></td>
    <td>...</td>
    <td><tt>...</tt></td>
  </tr>
  <tr>
    <td><tt>['docker-etcd-registrator']['run_user']</tt></td>
    <td>String</td>
    <td><tt>:run_user</tt></td>
    <td>...</td>
    <td><tt>...</tt></td>
  </tr>
  <tr>
    <td><tt>['docker-etcd-registrator']['hostname']</tt></td>
    <td>String</td>
    <td><tt>:hostname</tt></td>
    <td>...</td>
    <td><tt>...</tt></td>
  </tr>
  <tr>
    <td><tt>['docker-etcd-registrator']['register']</tt></td>
    <td>String</td>
    <td><tt>:register</tt></td>
    <td>...</td>
    <td><tt>...</tt></td>
  </tr>
  <tr>
    <td><tt>['docker-etcd-registrator']['register_public_ip']</tt></td>
    <td>String</td>
    <td><tt>:register_public_ip</tt></td>
    <td>...</td>
    <td><tt>...</tt></td>
  </tr>
  <tr>
    <td><tt>['docker-etcd-registrator']['force_public_ip']</tt></td>
    <td>String</td>
    <td><tt>:force_public_ip</tt></td>
    <td>...</td>
    <td><tt>...</tt></td>
  </tr>
  <tr>
    <td><tt>['docker-etcd-registrator']['skydns_prefix']</tt></td>
    <td>String</td>
    <td><tt>:skydns_prefix</tt></td>
    <td>...</td>
    <td><tt>...</tt></td>
  </tr>
  <tr>
    <td><tt>['docker-etcd-registrator']['vulcand_prefix']</tt></td>
    <td>String</td>
    <td><tt>:vulcand_prefix</tt></td>
    <td>...</td>
    <td><tt>...</tt></td>
  </tr>
  <tr>
    <td><tt>['docker-etcd-registrator']['docker_host']</tt></td>
    <td>String</td>
    <td><tt>:docker_host</tt></td>
    <td>...</td>
    <td><tt>...</tt></td>
  </tr>
  <tr>
    <td><tt>['docker-etcd-registrator']['docker_tls_verify']</tt></td>
    <td>String</td>
    <td><tt>:docker_tls_verify</tt></td>
    <td>...</td>
    <td><tt>...</tt></td>
  </tr>
  <tr>
    <td><tt>['docker-etcd-registrator']['docker_cert_path']</tt></td>
    <td>String</td>
    <td><tt>:docker_cert_path</tt></td>
    <td>...</td>
    <td><tt>...</tt></td>
  </tr>
  <tr>
    <td><tt>['docker-etcd-registrator']['etcd_endpoints']</tt></td>
    <td>String</td>
    <td><tt>:etcd_endpoints</tt></td>
    <td>...</td>
    <td><tt>...</tt></td>
  </tr>
  <tr>
    <td><tt>['docker-etcd-registrator']['etcd_cafile']</tt></td>
    <td>String</td>
    <td><tt>:etcd_cafile</tt></td>
    <td>...</td>
    <td><tt>...</tt></td>
  </tr>
  <tr>
    <td><tt>['docker-etcd-registrator']['etcd_certfile']</tt></td>
    <td>String</td>
    <td><tt>:etcd_certfile</tt></td>
    <td>...</td>
    <td><tt>...</tt></td>
  </tr>
  <tr>
    <td><tt>['docker-etcd-registrator']['etcd_keyfile']</tt></td>
    <td>String</td>
    <td><tt>:etcd_keyfile</tt></td>
    <td>...</td>
    <td><tt>...</tt></td>
  </tr>
</table>

Usage
-----
#### docker-etcd-registrator::default
Installs the registrator
Include <tt>docker-etcd-registrator` in your node's `run_list</tt>:

<tt>`</tt>json
{
  "name":"my_node",
  "run_list": [
    "recipe[docker-etcd-registrator]"
  ]
}
<tt>`</tt>

Contributing
------------
1. Fork the repository on Github
2. Create a named feature branch (like <tt>add_component_x</tt>)
3. Write your change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

License and Authors
-------------------
Authors: 
Petr Belyaev <upcfrost@gmail.com>#
# Cookbook Name:: docker-etcd-registrator
# Resource:: docker-etcd-registrator_default
#
# Copyright 2016, Petr Belyaev <upcfrost@gmail.com>
#

