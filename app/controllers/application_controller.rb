class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

#   before_action do
#     @current_user = User.find(session[:id])
#   end
#
#   def authenticate_user!
#     if user_signed_in? != true
#       redirect_to sign_in_path
#     end
#   end
#
#   def user_signed_in?
#     @current_user.present?
#   end
# end
end
