class BookmarksController < ApplicationController
  def index
    @bookmarks = Bookmark.all
  end

  def new
    @list = List.find(params[:list_id])
    @bookmark = Bookmark.new
    @bookmark.list = @list
  end

  def create
    @bookmark = Bookmark.new(bookmark_params)
    @list = List.find(params[:list_id])
    @bookmark.list = @list
    @bookmark.save!
    redirect_to list_path(@list)
  end

  # def show
  #   @bookmark = Bookmark.find(params[:id])
  # end



  private

  def bookmark_params
    params.require(:bookmark).permit(:comment, :movie_id, :list)
  end

end
