class AddConfirmationTableToBooking < ActiveRecord::Migration[6.1]
  def change
    add_column :bookings, :confirmation, :string, default: "pending"
  end
end
