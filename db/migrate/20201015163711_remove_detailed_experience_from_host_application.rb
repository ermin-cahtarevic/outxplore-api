class RemoveDetailedExperienceFromHostApplication < ActiveRecord::Migration[5.2]
  def change
    remove_column :host_applications, :detailed_experience, :string
  end
end
