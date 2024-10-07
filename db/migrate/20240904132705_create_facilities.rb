class CreateFacilities < ActiveRecord::Migration[7.2]
  def change
    create_table :facilities do |t|
      t.string :title
      t.string :subtitle
      t.string :primary_state
      t.integer :status
      t.boolean :private

      t.timestamps
    end
  end
end
