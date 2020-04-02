class PostsController < ApplicationController
  def index
    @post = Post.all
  end
  def new
  end
  def show
    @post = Post.find(params[:id])
  end
end
