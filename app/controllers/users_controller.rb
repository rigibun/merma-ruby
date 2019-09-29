class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @exhibits = @user.exhibits
  end
end
