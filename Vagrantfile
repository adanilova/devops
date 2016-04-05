Vagrant.configure("2") do |config|
  config.vm.box = "parallels/ubuntu-14.04"
  config.berkshelf.enabled = false
  config.vm.provider :parallels do |parallels, conf|
  conf.vm.provision :chef_client do |chef|
      chef.encrypted_data_bag_secret_key_path = '/Users/Stacy/Documents/devops/.chef/encrypted_data_bag_secret'
      chef.chef_server_url = "https://api.chef.io/organizations/domk"
      chef.validation_key_path = '/Users/Stacy/Documents/devops/.chef/domk-validator.pem'
      chef.validation_client_name = 'chef-validator'
      chef.delete_node = true
      chef.delete_client = true
      chef.add_role "wordpress"
      chef.install = true
    end
  end
end
