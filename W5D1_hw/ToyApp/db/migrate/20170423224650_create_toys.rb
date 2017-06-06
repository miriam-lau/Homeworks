class CreateToys < ActiveRecord::Migration
  def change
    create_table :toys do |t|
      t.string :name, null: false
      t.integer :toyable_id
      t.string :toyable_type
      t.references :toyable, polymorhic: true, index: true
      t.timestamps null: false
    end
    add_index :toys, [:name, :toyable_id, :toyable_type], unique: true
  end
end
