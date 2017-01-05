class UsersController < ApplicationController

  def index
  end

  def new
    # show signup form
    @user = User.new
  end

  def create
    # create user
    if user_params[:password] == user_params[:password_confirmation]
      # binding.pry
      @user = User.create(user_params)
      # binding.pry
      redirect_to user_path(@user)
    else
      binding.pry
      redirect_to new_user_path
    end

  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def user_params
    params.require(:user).permit(:name, :height, :happiness, :nausea, :tickets, :admin, :password, :password_confirmation)
  end

end
