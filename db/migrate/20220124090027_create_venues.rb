class CreateVenues < ActiveRecord::Migration[6.0]
  def change
    create_table :venues do |t|
      t.string :name
      t.string :description
      t.string :address
      t.float :rating
      t.float :size
      t.string :category
      t.boolean :wifi
      t.boolean :charging_outlet

      t.timestamps
    end
  end
end
