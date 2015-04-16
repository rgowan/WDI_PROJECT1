class UsersController < ApplicationController

  def index
    if params[:q].present?
      @q = User.ransack(params[:q])
      @users = @q.result(distinct: true)
    else 
      @users = User.all
    end
  end

  def show
    @user = User.find(params[:id])
  end
  
end