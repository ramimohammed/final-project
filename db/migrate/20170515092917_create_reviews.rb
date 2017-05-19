class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.text :rev
      t.integer :user_id
      t.integer :property_id

      t.timestamps null: false
    end
  end
end
