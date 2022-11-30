class PostsController < ApplicationController
  def index
    if params[:kind_of_post]  == "building"
      @posts = Post.where(kind: "building")
    elsif params[:kind_of_post] == "neighborhood"
      @posts = Post.where(kind: "neighborhood")
      # add in && post.hidden = false && post.solved = false
    end
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.user = current_user
    if @post.save
      redirect_to posts_path(@posts)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    @post.update(post_params)
    redirect_to posts_path(@posts)
  end

  private

  def post_params
    params.require(:post).permit(:title, :content, :category, :duration, :price, :hidden, :solved)
  end
end
