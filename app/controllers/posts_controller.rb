class PostsController < ApplicationController
  def index
    @users = User.geocoded
    @posts = Post.where(user_id: @users.pluck(:id))
    if params[:kind_of_post] == "building"
      @posts = Post.where(kind: "building").where(address: current_user.address).where(solved: false).order(created_at: :desc)
      # logic to hide posts after x amount of days
      # .where("created_at => ?", 7.days.ago)
    elsif params[:kind_of_post] == "neighborhood" && params.has_key?("category")
      # add in nearby radius for kiez
      # add in && post.hidden = false && post.solved = false
      @posts = Post.geocoded.where(kind: "neighborhood").near([current_user.latitude, current_user.longitude], 5).where(solved: false).order(created_at: :desc)
      @posts = @posts.select do |post|
        post.category == params[:category]
      # logic to hide posts after x amount of days
      # .where("created_at => ?", 14.days.ago)
      end
    elsif params[:kind_of_post] == "neighborhood"
      @posts = Post.geocoded.where(kind: "neighborhood").near([current_user.latitude, current_user.longitude], 5).where(solved: false).order(created_at: :desc)
    end

    if params[:query].present?
      sql_query = <<~SQL
        posts.title @@ :query
        OR posts.category @@ :query
        OR posts.duration @@ :query
      SQL
      @posts = @posts.near([current_user.latitude, current_user.longitude], 5).where(sql_query, query: "%#{params[:query]}%").where(solved: false)
    end

    @user_location = [current_user.longitude, current_user.latitude]

    @markers = @posts.map do |post|
      {
        lat: post.latitude,
        lng: post.longitude,
        info_window: render_to_string(partial: "info_window", locals: {post: post}),
        image_url: helpers.asset_url("kiez-logo.png")
      }
    end

    # @posts = @posts.order(created_at: :desc)
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
    @kind = params[:kind_of_post]
  end

  def create
    @post = Post.new(post_params)
    @post.user = current_user
    @post.address = current_user.address
    @post.solved = false
    # @post.kind = params[:kind_of_post]
    if @post.save
      redirect_to posts_path(kind_of_post: @post.kind)
    else
      redirect_to posts_path(kind_of_post: @post.kind), notice: "Post Not Created, please fill out all fields"
    end
  end

  def solve
    @post = Post.find(params[:id])
    @post.solved = true
    @post.save
    redirect_to post_path(@post)
  end

  def edit
    @post = Post.find(params[:id])
    @kind = @post.kind
  end

  def update
    @post = Post.find(params[:id])
    @post.update(post_params)
    redirect_to posts_path(kind_of_post: @post.kind)
  end

  private

  def post_params
    params.require(:post).permit(:title, :content, :category, :duration, :price, :hidden, :solved, :kind, :photo)
  end
end
