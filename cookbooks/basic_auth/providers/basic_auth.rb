resource_name :basic_auth

property :username, kind_of: String, name_property: true
property :password, kind_of: String, required: true
property :authfile, kind_of: String, default: "/etc/authfile"

action :create do
  if @name_property.exists
    Chef::Log.info "#{ @new_resource } already exists - nothing to do."
  else
  #  add user and hash pass into basuc auth file

  end
 # a mix of built-in Chef resources and Ruby
end

action :delite do
  if user dose not exist
    Chef::Log.info "#{ @new_resource } already do not exists - nothing to do."
  else
    # delite user and pass
end
