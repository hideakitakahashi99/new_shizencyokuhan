class AlterStaffAddresses1 < ActiveRecord::Migration
  def change
  	add_index :staff_addresses, :prefecture 
  end
end
