class CreateSuffixes < ActiveRecord::Migration[7.2]
  def change
    create_table :suffixes do |t|
      t.string :name
      t.string :abbreviation
      t.text :summary
      t.boolean :active

      t.timestamps
    end
  end
end
