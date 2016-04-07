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
    <td>`:conf_dir`</td>
    <td>...</td>
    <td><tt>...</tt></td>
  </tr>
  <tr>
    <td><tt>['docker-etcd-registrator']['binary']</tt></td>
    <td>String</td>
    <td>`:binary`</td>
    <td>...</td>
    <td><tt>...</tt></td>
  </tr>
  <tr>
    <td><tt>['docker-etcd-registrator']['run_user']</tt></td>
    <td>String</td>
    <td>`:run_user`</td>
    <td>...</td>
    <td><tt>...</tt></td>
  </tr>
  <tr>
    <td><tt>['docker-etcd-registrator']['hostname']</tt></td>
    <td>String</td>
    <td>`:hostname`</td>
    <td>...</td>
    <td><tt>...</tt></td>
  </tr>
  <tr>
    <td><tt>['docker-etcd-registrator']['register']</tt></td>
    <td>String</td>
    <td>`:register`</td>
    <td>...</td>
    <td><tt>...</tt></td>
  </tr>
  <tr>
    <td><tt>['docker-etcd-registrator']['register_public_ip']</tt></td>
    <td>String</td>
    <td>`:register_public_ip`</td>
    <td>...</td>
    <td><tt>...</tt></td>
  </tr>
  <tr>
    <td><tt>['docker-etcd-registrator']['force_public_ip']</tt></td>
    <td>String</td>
    <td>`:force_public_ip`</td>
    <td>...</td>
    <td><tt>...</tt></td>
  </tr>
  <tr>
    <td><tt>['docker-etcd-registrator']['skydns_prefix']</tt></td>
    <td>String</td>
    <td>`:skydns_prefix`</td>
    <td>...</td>
    <td><tt>...</tt></td>
  </tr>
  <tr>
    <td><tt>['docker-etcd-registrator']['vulcand_prefix']</tt></td>
    <td>String</td>
    <td>`:vulcand_prefix`</td>
    <td>...</td>
    <td><tt>...</tt></td>
  </tr>
  <tr>
    <td><tt>['docker-etcd-registrator']['docker_host']</tt></td>
    <td>String</td>
    <td>`:docker_host`</td>
    <td>...</td>
    <td><tt>...</tt></td>
  </tr>
  <tr>
    <td><tt>['docker-etcd-registrator']['docker_tls_verify']</tt></td>
    <td>String</td>
    <td>`:docker_tls_verify`</td>
    <td>...</td>
    <td><tt>...</tt></td>
  </tr>
  <tr>
    <td><tt>['docker-etcd-registrator']['docker_cert_path']</tt></td>
    <td>String</td>
    <td>`:docker_cert_path`</td>
    <td>...</td>
    <td><tt>...</tt></td>
  </tr>
  <tr>
    <td><tt>['docker-etcd-registrator']['etcd_endpoints']</tt></td>
    <td>String</td>
    <td>`:etcd_endpoints`</td>
    <td>...</td>
    <td><tt>...</tt></td>
  </tr>
  <tr>
    <td><tt>['docker-etcd-registrator']['etcd_cafile']</tt></td>
    <td>String</td>
    <td>`:etcd_cafile`</td>
    <td>...</td>
    <td><tt>...</tt></td>
  </tr>
  <tr>
    <td><tt>['docker-etcd-registrator']['etcd_certfile']</tt></td>
    <td>String</td>
    <td>`:etcd_certfile`</td>
    <td>...</td>
    <td><tt>...</tt></td>
  </tr>
  <tr>
    <td><tt>['docker-etcd-registrator']['etcd_keyfile']</tt></td>
    <td>String</td>
    <td>`:etcd_keyfile`</td>
    <td>...</td>
    <td><tt>...</tt></td>
  </tr>
</table>

Usage
-----
#### docker-etcd-registrator::default
Installs the registrator
Include `docker-etcd-registrator` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[docker-etcd-registrator]"
  ]
}
```

Contributing
------------
1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
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

