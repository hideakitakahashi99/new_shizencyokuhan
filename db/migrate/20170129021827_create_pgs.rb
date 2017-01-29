class CreatePgs < ActiveRecord::Migration
  def change
    create_table :pgs do |t|

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
    add_index :pgs, :staff_member_id
  end

end
