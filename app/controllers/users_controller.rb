class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def show
    @user = User.all    
  end

  def create
    @user = User.new(user_params)
    if @user.save
        redirect_to @user, notice: "Thank you for signing up"
    else
        render "new"
    end
  end
private
  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password,
                                 :password_digest)  
  end
end
