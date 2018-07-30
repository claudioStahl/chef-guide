# Hello world guide

#### In local:
- Install Chef Development Kit: https://downloads.chef.io/chefdk
- Install Vagrant: https://www.vagrantup.com/downloads.html
- Install VirtualBox: https://www.virtualbox.org/wiki/Downloads
- Create VM: `kitchen create default-ubuntu-1604`
- Show VMs: `vagrant global-status`
- Connect to VM: `vagrant ssh :vm_id`

#### In VM:
- Set to root: `sudo -i`
- Update apt: `apt-get update`
- Install curl `apt-get install curl -y`
- Install Chef DK: `curl https://omnitruck.chef.io/install.sh | bash -s -- -P chefdk -c stable -v 2.5.3`
- Execute the recipe: `chef-client --local-mode ./cookbooks/chef-guide/recipes/hello.rb`
- Install dependencies of cookbook: `berks install --berksfile ./cookbooks/chef-guide/Berksfile`
- Copy the installed cookbooks: `berks vendor cookbooks --berksfile ./cookbooks/chef-guide/Berksfile`
- Execute cookbook: `chef-client --local-mode --runlist 'recipe[chef-guide]'`

### Other commands
- Generate recipe: `chef generate cookbook chef-guide`
- Test recipe: `kitchen test default-ubuntu-1604`
