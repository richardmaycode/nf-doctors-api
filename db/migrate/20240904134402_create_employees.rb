class CreateEmployees < ActiveRecord::Migration[7.2]
  def change
    create_table :employees do |t|
      t.string :prefix
      t.string :name
      t.string :suffix
      t.integer :employee_type
      t.boolean :coordinator
      t.belongs_to :location, null: false, foreign_key: true

      t.timestamps
    end
  end
end
