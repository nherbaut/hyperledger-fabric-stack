open_mode: True
auto_accept: True
fileserver_backend:
  - gitfs
gitfs_remotes:
  - https://github.com/saltstack-formulas/salt-formula.git
  - https://github.com/saltstack-formulas/docker-formula
  - https://github.com/saltstack-formulas/golang-formula.git
file_roots:
  base:
    - /srv/salt
    - /srv/formulas/node-formula
    - /srv/formulas/monitoring-formula

