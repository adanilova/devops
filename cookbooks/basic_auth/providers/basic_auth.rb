resource_name :basic_auth

property :username, kind_of: String, name_property: true
property :password, kind_of: String, required: true
property :authfile, kind_of: String, default: "/etc/authfile"

action :add do
  if user_in_file?
    if password_matches?
      Chef::Log.info "#{ @new_resource } already exists - nothing to do."
  else
  #  add user and hash pass into basic auth file
  end
 # a mix of built-in Chef resources and Ruby
end

action :delete do
  if user does not exist
    Chef::Log.info "#{ @new_resource } already do not exists - nothing to do."
  else
    # delete user and pass
end

def password_matches?(filename,username,password,hash)
  break
end

def user_in_file?(username)
  break
end
