class StaticPagesController < ApplicationController
  def home
    @q = User.ransack(params[:q])
  end
end
