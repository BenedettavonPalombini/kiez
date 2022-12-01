class BookmarksController < ApplicationController
  def new
    @bookmark = Bookmark.new
  end

  def create
    @post = Post.find(params[:post_id])
    @bookmark = Bookmark.new
    @bookmark.post = @post
    @bookmark.user = current_user
    if @bookmark.save
      redirect_to posts_path(@post.kind)
    else
      flash[:notice] = @bookmark.errors.full_messages.to_sentence
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @bookmark.destroy
    redirect_to post_path(@post.list)
  end
end
