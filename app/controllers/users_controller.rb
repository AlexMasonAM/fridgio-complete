class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(params.require(:user).permit(:password, :password_confirmation, :username, :email, :name))

    if @user.save
      session[:user_id] = @user.id
      redirect_to food_index_path
    else
      render :new
    end
  end
end
