class MicropostsController < ApplicationController
  def index
    @microposts = Micropost.all
    @user1 = User.all
  end
  def show
   @user = User.find(params[:id])
   @microposts = Micropost.find(params[:id])
 end
end
