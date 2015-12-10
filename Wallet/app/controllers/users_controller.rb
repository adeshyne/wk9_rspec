class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    result = User.create(user_params)
    if result && !result.id.nil?
      redirect_to "/cards/new"
    else
      redirect_to "/users/new/BAD"
    end
  end

  def contact
    
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to user_path @user
  end

  def index
    @users = User.all
  end

  def show
    puts "Calling users#show with #{params[:id]}"
    @user = User.find(params[:id])
  end

  def destroy
    @zilch = User.find(params[:id])
    @zilch.destroy
  end
end
