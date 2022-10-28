class UsersController < ApplicationController
    def new
        render :new
        end

    def create
       @user = User.find_by_credentials(user_params)
      if @user.is_password?(password)
          login!(@user)
          redirect_to user_url(@user)
      else
          flash.now[:errors] = @user.errors.full_messages
          flash.now[:username] = username
          render :new
      end
    end

    def edit
      render :edit
    end

    def update
      render :update
    end

    private
    def user_params
        params.require(:user).permit(:username,:password)
    end
end
