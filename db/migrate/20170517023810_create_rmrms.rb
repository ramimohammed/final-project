class CreateRmrms < ActiveRecord::Migration
  def change
    create_table :rmrms do |t|
      t.string :file
      t.references :property, index: true, foreign_key: true
      t.timestamps null: false
    end
  end
end
