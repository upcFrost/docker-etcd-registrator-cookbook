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
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['docker-etcd-registrator']['bacon']</tt></td>
    <td>Boolean</td>
    <td>whether to include bacon</td>
    <td><tt>true</tt></td>
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
Petr Belyaev <upcfrost@gmail.com>