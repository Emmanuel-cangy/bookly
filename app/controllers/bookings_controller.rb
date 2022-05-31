class BookingsController < ApplicationController
  before_action :set_book, only: %i[new create]
  helper_method :rent_price

  def index
    @bookings = Booking.where(user: current_user)
    @all_bookings = Booking.all
    @owner_bookings = []
    @status = %w[Accept Decline]
    @all_bookings.each do |booking|
      @owner_bookings << booking if booking.book.user == current_user
    end
  end

  def rent_price(booking)
    @rent_price = (booking.return_date - booking.rent_date) * booking.book.price_per_day
    @rent_price.round
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.update(params_confirmation)
    redirect_to bookings_path
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(params_booking)
    @booking.book = @book
    @booking.user = current_user
    if @booking.save
      redirect_to bookings_path
    else
      render :new
    end
  end

  private

  def set_book
    @book = Book.find(params[:book_id])
  end

  def params_booking
    params.require(:booking).permit(:rent_date, :return_date, :book_id)
  end

  def params_confirmation
    params.require(:booking).permit(:confirmation)
  end
end
