action :create do
 template new_resource.authfile do
  source 'basic_auth.erb'
  owner 'root'
  group 'root'
  mode '0755'
  cookbook 'basic_auth'
  variables({
    :u => new_resource.usernames
  })
 end
end


# template Chef
# генерировать новый файл каждый раз, проверяя чек-сумму
# сначала с помощью template создавать фалы (передаем путь к ресурсу, наполнить его содержимым с помощью темплейта, а туда данные передаются руби хеш)
