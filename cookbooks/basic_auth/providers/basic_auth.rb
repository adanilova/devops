# => resource_name :basic_auth

# property :username, kind_of: String, name_property: true
# property :password, kind_of: String, required: true
# property :authfile, kind_of: String, default: "/etc/authfile"

action :create do
 template '/etc/authfile' do
  source 'basic_auth.erb'
  owner 'root'
  group 'root'
  mode '0755'
  variables :username => {
    'username1.txt.erb' => 'password',
    'username2.txt.erb' => 'password',
    'username3.txt.erb' => 'password'
  }
 end
end



# action :create do
#   if user_in_file?
#     if password_matches?
#       Chef::Log.info "#{ @new_resource } already exists - nothing to do."
#   else
#
#   #  add user and hash pass into basic auth file
#   end
#  # a mix of built-in Chef resources and Ruby
# end



# action :delete do
#   if user does not exist
#     Chef::Log.info "#{ @new_resource } already do not exists - nothing to do."
#   else
#     # delete user and pass
# end

# def password_matches?(filename,username,password,hash)
#   break
# end
#
# def user_in_file?(username)
#   break
# end

# как на рубях add/delete строки в файл и поработать со строками
# irb
# String documentation ruby
# 1 открыть файл
# 2 написать что-нибудь в файл
# 3 прочитать строку из файла по условию (regexp)
# 4 добавить строку склеенную из двух переменных
# 5 удалить строку по условию
# template Chef
# генерировать новый файл каждый раз, проверяя чек-сумму
# сначала с помощью template создавать фалы (передаем путь к ресурсу, наполнить его содержимым с помощью темплейта, а туда данные передаются массивом переменных)
