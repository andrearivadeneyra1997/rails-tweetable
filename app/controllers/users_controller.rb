class UsersController < ApplicationController
  def index
    # mostrar todos los usuarios
    @users = User.all
  end

  def show
    # mostrar un usuario en especifico
    if current_user
      @user = User.find(current_user.id)
      render 'users/show'
    end
  end

  def create
    binding.pry
  end

  def update
  end
end
