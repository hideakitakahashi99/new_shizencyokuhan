class CreateBanks < ActiveRecord::Migration
  def change
  	create_table :banks do |t|

  		t.references :staff_member
  		t.string :bank_name
  		t.string :branch_name
  		t.string :account_type
  		t.integer :account_number
  		t.string :account_holder

  		t.timestamps
  	end
  	add_index :banks, :staff_member_id
    add_foreign_key :banks, :staff_members
  end
end
