module UsersHelper
  def user_auth(user)
    (current_user && user == current_user)? true : false
  end
end
