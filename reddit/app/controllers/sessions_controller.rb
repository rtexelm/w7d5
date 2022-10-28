class SessionsController < ApplicationController
  def new
    render :new
  end

  def create
    @user = User.find_by_credentials(params[:user][:username],params[:user][:password])
    if @user.is_password?(password)
      login!(@user)
      redirect_to user_url(@user)
    else
      render :new
      flash.now[:errors] = @user.errors.full_messages
      flash.now[:username] = username
    end
  end

  def destroy
    logout!
    redirect_to users_url
  end
end
