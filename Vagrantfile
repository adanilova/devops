Vagrant.configure("2") do |config|
  config.vm.box = "parallels/ubuntu-14.04"
  config.vm.provider :parallels do |parallels, conf|
    conf.vm.provision :chef_zero do |chef|
      chef.log_level = :info
      chef.cookbooks_path = "cookbooks"
      chef.roles_path = "roles"
      chef.add_recipe "app_demo"
      chef.data_bags_path = "data_bags"
      chef.environments_path ="environments"
      chef.environment ="production"
      chef.add_role "application"
      chef.nodes_path = "nodes"
    end
  end
end
