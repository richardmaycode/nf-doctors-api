class CreateDisiplines < ActiveRecord::Migration[7.2]
  def change
    create_table :disiplines do |t|
      t.string :name
      t.string :summary
      t.boolean :active

      t.timestamps
    end
  end
end
