class UsersController < ApplicationController
  before_filter :authenticate_user!

  def index
    @users = User.all
    redirect_to user_albums_path(current_user.id)
  end

  def show
   
    @user = User.find(params[:id])
    unless @user == current_user
      redirect_to :back, :alert => "Access denied."
    end
  end

end
