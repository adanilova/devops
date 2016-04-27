provides :basic_auth
resource_name :basic_auth

actions :create
default_action :create

attribute :authfile, :name_attribute => true, :kind_of => String,
          :required => true
attribute :usernames, :kind_of => Hash, :default => {}
