class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :firstname
      t.string :lastname
      t.string :email
      t.integer :phone_number
      t.string :password
      t.string :location
    end
  end
end
