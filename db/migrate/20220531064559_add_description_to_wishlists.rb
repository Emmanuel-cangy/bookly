class AddDescriptionToWishlists < ActiveRecord::Migration[6.1]
  def change
    add_column :wishlists, :description, :text
  end
end
