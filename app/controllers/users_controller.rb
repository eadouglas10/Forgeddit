class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.create(email: params["user"]["email"], full_name: params["user"]["full_name"])


    if @user.valid?
      redirect_to(links_path)
    else
      render :new
    end
  end

end
