class CreateProperties < ActiveRecord::Migration
  def change
    create_table :properties do |t|
      t.string :title
      t.string :description
      t.decimal :price
      t.integer :beds
      t.integer :baths
      t.string :address
      t.string :city
      t.string :zip_code
      t.float :latitude
      t.float :longitude
      t.integer :type_id
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
