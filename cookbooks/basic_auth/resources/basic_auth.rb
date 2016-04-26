provides :basic_auth
resource_name :basic_auth

actions :create, :delite
default_action :create

attribute :username, :name_attribute: true, :kind_of => String
          :required => true
attribute :password, kind_of => String
attribute :authfile, kind_of => String, :default => "/etc/authfile"
