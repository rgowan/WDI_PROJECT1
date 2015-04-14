class UsersController < ApplicationController

  def index
    @songs = Song.all
  end

  def show
    @user = User.find(params[:id])
  end

  private
    def user_params
      params.require(:user).permit(:email, :password, :password_confirmation, :full_name, :stage_name, :age, :profile_picture)
    end
end