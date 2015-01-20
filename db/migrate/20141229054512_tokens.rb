class Tokens < ActiveRecord::Migration
  def change
  	create_table :tokens do |t|
  		t.references :customer, null: false 
  		t.string :uuid, null: false
  		t.datetime :expire_at, null: false
		t.timestamps
	end 
	add_index :tokens, :customer_id
  end
end
