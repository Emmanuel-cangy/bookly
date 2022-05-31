class BookmarksController < ApplicationController
  before_action :set_wishlist, only: %i[new create destroy]

  def new
    @bookmark = Bookmark.new
  end

  def create
    @bookmark = Bookmark.new(params_bookmark)
    @bookmark.wishlist = @wishlist
    if @bookmark.save
      redirect_to wishlist_path(@wishlist)
    else
      render :new
    end
  end

  def destroy
    @bookmark = Bookmark.find(params[:id])
    @bookmark.delete
    redirect_to wishlist_path(@wishlist)
  end

  private

  def params_bookmark
    params.require(:bookmark).permit(:book_id)
  end

  def set_wishlist
    @wishlist = Wishlist.find(params[:wishlist_id])
  end
end
