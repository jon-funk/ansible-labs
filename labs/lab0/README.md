# Lab 0: Ansible Preamble
[Ansible](https://docs.ansible.com/ansible/latest/index.html#about-ansible) is a scalable automation tool developed by Redhat, and while it's simple in concept and how it behaves, it's that simplicity that allows it to be so applicable in so many IT scenarios.
Ansible works by deploying payloads of python code to hosts (remote or locally run) and executing those payloads, lastly, it reports on the output of those payloads. We refer to these payloads as modules.
A list of "functions" to call, or set of modules is called an Ansible-Playbook, think of it like your main function that houses all your subroutines. We define these [playbooks](https://github.com/jon-funk/ansible-labs/blob/main/labs/lab0/playbook.yaml) (APB) using the YAML syntax.
If a host has an available python interpreter with an SSH connection we have credentials for, we can apply ansible playbooks to that host and manage the configuration of it at-scale. These "light" requirements are just one of the many reasons Ansible shines.

## Nomenclature
- APB: Ansible playbook
- Module: In the context of ansible, ansible "functions" are called modules which are maintained by Redhat and the community. You can even write your own Ansible modules and add them!

## Inventories
[Inventories](https://docs.ansible.com/ansible/latest/user_guide/intro_inventory.html#inventory-basics-formats-hosts-and-groups) are a critical part of Ansible. When you execute an APB against an inventory, Ansible will begin applying the list of modules within the playbook to the list of hosts in the inventory. Inventories are quite flexible in that you can group and/or categorize hosts, allowing you better control and seperation of how your changes are applied. Particularly once group variables are added into the mix.

## Group variables
[Group variables](https://docs.ansible.com/ansible/latest/user_guide/intro_inventory.html#assigning-a-variable-to-many-machines-group-variables) allow you to create a mapping based on the grouping of hosts within the inventory file. Refer to the above link to see an example of how Ansible creates this association based on the inventory file's schema and location.

##  Why would I use this tool?
- Earlier, you might have asked yourself: well if the host has to have a python interpreter with an SSH connection. Why don't I just write my own Python application and skip Ansible? The answer to this is, is that you could. But be warned, in the software world re-inventing the wheel is rarely the answer - a trap I myself have fallen into many times. In opensource, if it's already been done, it's likely been done better then you could ever do and is being maintained by a community. Once you start writing this app to manage these hosts, you'll be on the hook to maintain that app, and deal with any technical debt the app accrues over time.

- Ansible modules are maintained for you, freeing you from that technical debt, they're standardized, and most of them have built-in idemptotent behaviour.

- What's idemptotent behaviour? To quote wikipedia: `Idempotence is the property of certain operations in mathematics and computer science whereby they can be applied multiple times without changing the result beyond the initial application`.
To provide a mathematics example: `x=5` is idempotent because you can repeatadly assign 5 to x, and the result is always 5. However, `x=x*5 where x>=1` is not idempotent, because the 2nd multiplication will be a different result from the first. 

- A lot of work in operations goes into ensuring that changes are idempotent, as this makes them much more stable when working with a large inventory and orchestrating configuration changes at-scale. Ansible takes care of this work for you by providing you with a huge list of modules that are already idempotent.

## Closing notes
- Here's an excellent book on Ansible and DevOps https://leanpub.com/ansible-for-devops

### References
- https://en.wikipedia.org/wiki/Idempotence

