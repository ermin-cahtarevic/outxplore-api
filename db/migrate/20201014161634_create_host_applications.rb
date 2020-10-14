class CreateHostApplications < ActiveRecord::Migration[5.2]
  def change
    create_table :host_applications do |t|
      t.references :user, foreign_key: true
      t.string :activity_type
      t.string :previous_hosting_experience
      t.text :detailed_experience
      t.integer :guest_max_num
      t.text :additional_experience_info
      t.string :location
      t.string :location_type
      t.text :detailed_description
      t.text :links

      t.timestamps
    end
  end
end
