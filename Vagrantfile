# Vagrant.configure("2") do |config|
#   config.vm.box = "parallels/ubuntu-14.04"
#   config.berkshelf.enabled = false
#   config.vm.provider :parallels do |parallels, conf|
#   conf.vm.provision :chef_client do |chef|
#       chef.encrypted_data_bag_secret_key_path = '/Users/Stacy/Documents/devops/.chef/encrypted_data_bag_secret'
#       chef.chef_server_url = "https://api.chef.io/organizations/tttt"
#       chef.validation_key_path = "/Users/Stacy/Documents/devops/.chef/tttt-validator.pem"
#       chef.validation_client_name = 'tttt-validator'
#       chef.delete_node = true
#       chef.delete_client = true
#       chef.add_role "wordpress"
#       chef.install = true
#       chef.log_level = :info
#       chef.environment ="_default"
#     end
#   end
# end
Vagrant.configure("2") do |config|
  config.vm.box = "parallels/ubuntu-14.04"
  config.vm.provider :parallels do |parallels, conf|
    conf.vm.provision :chef_zero do |chef|
      chef.log_level = :info
      chef.cookbooks_path = "cookbooks"
      chef.roles_path = "roles"
      chef.add_recipe "app_demo"
      chef.data_bags_path = "data_bags"
      chef.encrypted_data_bag_secret_key_path =".chef/encrypted_data_bag_secret"
      chef.environments_path ="environments"
      chef.environment ="production"
      #chef.add_role "application"
      chef.add_role "wordpress"
      chef.nodes_path = "nodes"
    end
  end
end

#начать с генирации файлы
#потом обернуть его в LWRP
