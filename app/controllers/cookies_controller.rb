class CookiesController < ApplicationController
  def set
    cookies[:user_alias] = 'Cookie Monster'
    cookies[:client_id] = '12345'
  end

  def show
    @user_alias = cookies[:user_alias]
    @client_id = cookies[:client_id]
  end

  def delete
    cookies.delete :user_alias
    cookies.delete :client_id
  end
end




























# class CookiesController < ApplicationController
#   def set
#     session[:current_user] = {
#       test_id: {
#         name: 'Cookie Monster',
#         client_id: '12345'
#       }
#     }
#     cookies[:session_id] = 'test_id'
#   end

#   def show
#     current_user = session[:current_user][cookies[:session_id]]
#     @user_alias = current_user[:name.to_s]
#     @client_id = current_user[:client_id.to_s]
#   end

#   def delete
#     session.delete :user_alias
#     session.delete :client_id
#   end
# end
