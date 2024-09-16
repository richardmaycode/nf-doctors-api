class CreateLocations < ActiveRecord::Migration[7.2]
  def change
    create_table :locations do |t|
      t.string :name

      t.string :address_line_1
      t.string :address_line_2
      t.string :address_line_3
      t.string :city
      t.string :state
      t.string :zipcode
      t.string :url

      t.text :notes

      t.belongs_to :facility, null: false, foreign_key: true

      t.timestamps
    end
  end
end
