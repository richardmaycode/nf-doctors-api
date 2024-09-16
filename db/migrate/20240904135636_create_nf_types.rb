class CreateNfTypes < ActiveRecord::Migration[7.2]
  def change
    create_table :nf_types do |t|
      t.string :name
      t.string :abbreviation

      t.boolean :active

      t.timestamps
    end
  end
end
