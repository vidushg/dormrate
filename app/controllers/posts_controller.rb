class PostsController < ApplicationController
  before_action :set_s3_direct_post, only: [:new, :edit, :create, :update]
  def index
    @post = Post.all
  end
  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      flash[:success] = "Dorm rated successfully!"
      redirect_to @post
    else
      render 'new'
    end
  end

  def show
    @post = Post.find(params[:id])
  end

  private
  def post_params
    params.require(:post).permit(:name,:email,:room,:rating,:desc, :dormpic)
  end
  def set_s3_direct_post
    @s3_direct_post = S3_BUCKET.presigned_post(key: "uploads/#{SecureRandom.uuid}/${filename}", success_action_status: '201', acl: 'public-read')
  end
end
