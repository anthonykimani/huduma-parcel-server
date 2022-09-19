class CreateParcels < ActiveRecord::Migration[6.1]
  def change
    create_table :parcels do |t|
      t.string :category
      t.integer :weight
      t.integer :price
      t.integer :user_id
      t.integer :location_id
      t.string :parcel_destination
      t.string :delivery_time
      t.timestamps
    end
  end
end
