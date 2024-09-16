class CreateLocationDisiplines < ActiveRecord::Migration[7.2]
  def change
    create_table :location_disiplines do |t|
      t.belongs_to :location, null: false, foreign_key: true
      t.belongs_to :disipline, null: false, foreign_key: true

      t.timestamps
    end
  end
end
