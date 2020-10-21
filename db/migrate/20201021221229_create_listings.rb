class CreateListings < ActiveRecord::Migration[5.2]
  def change
    create_table :listings do |t|
      t.references :user, foreign_key: true
      t.string :title
      t.text :description
      t.string :location
      t.integer :guest_max_num
      t.string :activity_type
      t.string :photos, array: true, default: []
      t.integer :price

      t.timestamps
    end
  end
end
