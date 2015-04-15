class CreateStaffAddresses < ActiveRecord::Migration
  def change
    create_table :staff_addresses do |t|
    	t.references :staff_member, null: false, default:''
    	t.string :postal_code, null: false, default:''
    	t.string :prefecture, null: false, default:''
    	t.string :city, null: false, default:''
    	t.string :address1, null: false, default:''
    	t.string :address2, null: false, default:''

      t.timestamps
    end

    add_index :staff_addresses, :staff_member_id
    add_foreign_key :staff_addresses, :staff_members
  end
end
