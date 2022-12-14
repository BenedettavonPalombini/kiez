class BookmarksController < ApplicationController

  def new
    @bookmark = Bookmark.new
  end

  def create
    @post = Post.find(params[:post_id])
    @bookmark = Bookmark.new
    @bookmark.post = @post
    @bookmark.user = current_user
    @bookmark.save
    render json: @bookmark
  end

  def destroy
    @bookmark = Bookmark.find(params[:id])
    deleted_bookmark = @bookmark.delete
    render json: deleted_bookmark
  end
end
