class WishlistsController < ApplicationController
  before_action :set_wishlist, only: %i[show destroy]

  def index
    @wishlists = Wishlist.where(user: current_user)
  end

  def show
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
    @wishlist.delete
  end

  private

  def set_wishlist
    @wishlist = Wishlist.find(params[:id])
  end

  def params_wishlist
    params.require(:wishlist).permit(:name, :description)
  end
end