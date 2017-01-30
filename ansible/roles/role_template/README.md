# Deployment for HAPEE : Layer 7 load-balancing (HAProxy)

## Invocation

You should be able to deploy to each environment using the following, provided your ansible is set up and you have the right credentials...

### In DEV

    ansible-playbook -i inv/my_hosts template_role.yml --list-tags --list-hosts

#### Using Extra Variables

Defined Variables
bug_fix, 			default value is yes
install_extension   default value is no

#####Examples

--extra-vars="install_extension=yes"

--extra-vars="install_extension=yes bug_fix=no"

#### Using Tags

You can also run each individual `--tag` of TASKs as  individual or in combination if you only need to operate on specific services.
TAGS: 

##### Install Main Feature Sets Individually

`install_hapee` `install_logwatch` `install_yum_repo`

##### Install HAPEE Base and Extension Packages 

`pkg-main` 

`pkg-extension`   requires: `--extra-vars="install_extension=yes"`

##### Selectively Install HAPEE Extension Packages 

requires: `--extra-vars="install_extension=yes"` 

`pkg-acl-update` `pkg-bird_rhi` `pkg-lb-antibot` `pkg-lb-sanitize`

##### Update selective Config Files

`base_config` `vrrp_config` `log_config` `logrotate_config` `snmpd_config` `ssl_cert_config` `sysctl_config` 

##### Make Changes to the HAPEE Frontends, Backends, Config etc. via vars

`hapee-config_update`


##### Commands for haproxy

Ad-hoc commands can be run on individual hosts or host groups
