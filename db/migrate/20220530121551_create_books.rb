class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.string :title
      t.text :description
      t.integer :price_per_day
      t.references :user_id, null: false, foreign_key: true

      t.timestamps
    end
  end
end