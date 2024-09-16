class CreateLocationNfTypes < ActiveRecord::Migration[7.2]
  def change
    create_table :location_nf_types do |t|
      t.belongs_to :location, null: false, foreign_key: true
      t.belongs_to :nf_type, null: false, foreign_key: true

      t.timestamps
    end
  end
end
