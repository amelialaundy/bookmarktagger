class BookmarksController < ApplicationController

  def index
    @bookmarks = Bookmark.where(user_id: current_user)
  end

  def create
    @bookmark = Bookmark.new(bookmark_params)
    @bookmark.user_id = current_user.id
    if @bookmark.save
      redirect_to @bookmark
    else
      render 'new'
    end
  end

  def new
    @bookmark = Bookmark.new
  end

  def edit
  end

  def show
    @bookmark = Bookmark.find(params[:id])
  end

  def update
  end

  def destroy
  end

private
  def bookmark_params
    params.require(:bookmark).permit(:name, :link, tags_attributes: [:name, :_destroy])
  end

end
