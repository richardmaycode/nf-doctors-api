class CreateContacts < ActiveRecord::Migration[7.2]
  def change
    create_table :contacts do |t|
      t.integer :method
      t.string :value
      t.string :comment

      t.boolean :private

      t.bigint :contactable_id
      t.string :contactable_type
      t.belongs_to :facility, null: false, foreign_key: true

      t.timestamps
    end
  end
end
