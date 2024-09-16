class CreateLocationAgeGroups < ActiveRecord::Migration[7.2]
  def change
    create_table :location_age_groups do |t|
      t.belongs_to :location, null: false, foreign_key: true
      t.belongs_to :age_group, null: false, foreign_key: true

      t.timestamps
    end
  end
end
