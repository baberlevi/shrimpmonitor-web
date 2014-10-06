class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  
  #devise facebook omni auth callback controller action
  def facebook
    #this method needs to be in model apps/models/user.rb
    @user = User.find_for_facebook_oauth(request.env["omniauth.auth"])

    if @user.persisted?
	sign_in_and_redirect @user, :event => :authentication #this will thor if @user is not activated
	set_flash_message( :notice, :success, :kind => "Facebook") if is_navigational_format?
    else
	session["devise.facebook_data"] = request.env["omniauth.auth"]
	redirect_to new_user_registration_url
    end
  end


end
