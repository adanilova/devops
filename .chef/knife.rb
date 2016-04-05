# See http://docs.chef.io/config_rb_knife.html for more information on knife configuration options

current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "chloeraven"
client_key               "#{current_dir}/chloeraven.pem"
validation_client_name   "domk-validator"
validation_key           "#{current_dir}/domk-validator.pem"
chef_server_url          "https://api.chef.io/organizations/domk"
cookbook_path            ["#{current_dir}/../cookbooks"]
