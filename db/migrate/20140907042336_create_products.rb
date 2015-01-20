class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
    	t.string :category, null: false
    	t.string :variety, null: false
    	t.string :method, null: false
    	t.text :description
      t.string :net, null: false
    	t.decimal :price, precision: 8, null: false
    	t.string :stock, null: false
      t.belongs_to :staff_member
      t.timestamps
    end
  end
end
