class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
    	t.references :customer, null: false
      t.timestamps
    end
    add_index :orders, :customer_id
    add_foreign_key :orders, :customers
  end
end
