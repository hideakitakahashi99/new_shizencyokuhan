class CreateStaffAddresses < ActiveRecord::Migration
  def change
    create_table :staff_addresses do |t|
    	t.references :staff_member, null: false
    	t.string :postal_code, null: false
    	t.string :prefecture, null: false
    	t.string :city, null: false
    	t.string :address1, null: false
    	t.string :address2, null: false

      t.timestamps
    end

    add_index :staff_addresses, :staff_member_id
    add_foreign_key :staff_addresses, :staff_members
  end
end
