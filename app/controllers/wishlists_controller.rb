class WishlistsController < ApplicationController
  before_action :set_wishlist, only: %i[show destroy find_bookmark]
  helper_method :find_bookmark

  def index
    @wishlists = Wishlist.where(user: current_user)
  end

  def show
    @books = @wishlist.books
    @bookmark = Bookmark.new
  end

  def new
    @wishlist = Wishlist.new
  end

  def create
    @wishlist = Wishlist.new(params_wishlist)
    @wishlist.user = current_user
    if @wishlist.save
      redirect_to wishlist_path(@wishlist)
    else
      render :new
    end
  end

  def destroy
    @wishlist.destroy
    redirect_to wishlists_path
  end

  private

  def set_wishlist
    @wishlist = Wishlist.find(params[:id])
  end

  def params_wishlist
    params.require(:wishlist).permit(:name, :description, :photo)
  end

  def find_bookmark(book)
    book.bookmarks.each do |bookmark|
      @bookmark = bookmark if bookmark.wishlist_id == @wishlist.id
    end
    @bookmark
  end
end
