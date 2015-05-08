class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
    	t.string :category, null: false
    	t.string :variety, null: false
    	t.string :method, null: false
    	t.text :description
      t.integer :net, null: false
    	t.decimal :price, precision: 8, null: false
    	t.integer :stock, null: false
      t.references :staff_member, null: false
      t.string :staff_member_id
      t.timestamps
    end
    add_index :products, :staff_member_id
    add_foreign_key :products, :staff_members
  end
end
