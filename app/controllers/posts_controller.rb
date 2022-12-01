class PostsController < ApplicationController


  def index
    @users = User.geocoded
    @posts = Post.where(user_id: @users.pluck(:id))
    if params[:kind_of_post]  == "building"
      @posts = Post.where(kind: "building")
    elsif params[:kind_of_post] == "neighborhood"
      @posts = Post.where(kind: "neighborhood")

      # add in && post.hidden = false && post.solved = false
    end

    if params[:query].present?
      sql_query = <<~SQL
        posts.title @@ :query
        OR posts.category @@ :query
        OR posts.duration @@ :query
      SQL
      @posts = @posts.where(sql_query, query: "%#{params[:query]}%")
    end

    @markers = @users.map do |user|
      {
        lat: user.latitude,
        lng: user.longitude,
        posts: user.posts
      }
    end

  end

  def show
    @post = Post.find(params[:id])

    @markers = User.geocoded.map do |user|
      {
        lat: user.latitude,
        lng: user.longitude,
        posts: user.posts
      }
    end

  end

  def new
    @post = Post.new
    @kind = params[:kind_of_post]
  end

  def create
    @post = Post.new(post_params)
    @post.user = current_user
    if @post.save!
      redirect_to posts_path(@post.kind)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @post = Post.find(params[:id])
    @kind = params[:kind_of_post]
  end

  def update
    @post = Post.find(params[:id])
    @post.update(post_params)
    redirect_to posts_path(@posts)
  end

  private

  def post_params
    params.require(:post).permit(:title, :content, :category, :duration, :price, :hidden, :solved, :kind, :photo)
  end
end
