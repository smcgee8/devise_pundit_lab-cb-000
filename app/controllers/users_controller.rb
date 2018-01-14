class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    raise current_user.inspect
    @user = User.find(params[:id])
    authorize @user
  end

end
