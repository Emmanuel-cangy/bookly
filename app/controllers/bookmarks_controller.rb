class BookmarksController < ApplicationController
  before_action :set_wishlist, only: %i[new create]
  helper_method :find_bookmark


  def new
    @bookmark = Bookmark.new
    @books = @wishlist.books
  end

  def create
    @books = @wishlist.books
    @bookmark = Bookmark.new(params_bookmark)
    @bookmark.wishlist = @wishlist
    if @bookmark.save
      redirect_to wishlist_path(@wishlist)
    else
      # render :new
      render 'wishlists/show'
    end
  end

  def destroy
    @wishlist = Wishlist.find(params[:wishlist_id])
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

  def find_bookmark(book)
    book.bookmarks.each do |bookmark|
      @bookmark = bookmark if bookmark.wishlist_id == @wishlist.id
    end
    @bookmark
  end
end
