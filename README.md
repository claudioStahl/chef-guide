# Hello world guide

#### Local:
- Up Docker: `docker run -it -v $(pwd):/root/chef-repo -p 8100:80 ubuntu:14.04 /bin/bash`

#### On container:
- Update apt: `apt-get update`
- Install curl `apt-get install curl -y`
- Install Chef DK: `curl https://omnitruck.chef.io/install.sh | bash -s -- -P chefdk -c stable -v 2.5.3`
- Go to the work folder: `cd /root/chef-repo`
- Execute the recipe: `chef-client --local-mode hello.rb`
- ** Create cookbooks folder: `mkdir /root/chef-repo/cookbooks`
- ** Generate the cookbook setup_docker with Chef: `chef generate cookbook cookbooks/setup_docker`
- Install dependencies of cookbook: `berks install --berksfile ./cookbooks/setup_docker/Berksfile`
- Copy the installed cookbooks: `berks vendor cookbooks --berksfile ./cookbooks/setup_docker/Berksfile`
- Execute cookbook: `chef-client --local-mode --runlist 'recipe[setup_docker]'`
