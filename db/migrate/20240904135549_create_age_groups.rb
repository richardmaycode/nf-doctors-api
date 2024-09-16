class CreateAgeGroups < ActiveRecord::Migration[7.2]
  def change
    create_table :age_groups do |t|
      t.string :name
      t.boolean :active

      t.timestamps
    end
  end
end
