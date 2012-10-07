class UsersController < ApplicationController
  ## some text to say something!!

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      flash[:notice] = "User created."
      redirect_to users_url
    else
      render :new
    end
  end
end
