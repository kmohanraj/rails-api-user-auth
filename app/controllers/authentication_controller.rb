class AuthenticationController < ApplicationController
  before_action :authorize_request, except: :login
  
  def login
  	p params[:email]
  	@user = User.find_by_email(params[:email])
  	p "2222"
  	p @user
  	p "2222"

  	  if @user.authenticate(params[:password])
  		token = JsonWebToken.encode(user_id: @user.id)
  		time = Time.now + 24.hours.to_i
  		render json: { token: token}, status: :ok
  	  else
  		render json: { error: 'unauthorized'}, status: :unauthorized
  	  end
  end

  private

  def login_params
  	params.permit(:email, :password)
  end
end
