class UsersController < ApplicationController
#  def index
#  end
  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:users])
    if @user.save
        redirect_to root_url, notice: "Thank you for signing up"
    else
        render "new"
    end
  end
end
