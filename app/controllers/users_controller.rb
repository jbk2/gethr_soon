class UsersController < ApplicationController

  def index
    @user = User.all
  end

  def new
    @user = User.new
  end

  def create
    # raise 'hello'
    @user = User.new(params[:user].permit(:name, :email))
    redirect_to 'index'
  end

end
