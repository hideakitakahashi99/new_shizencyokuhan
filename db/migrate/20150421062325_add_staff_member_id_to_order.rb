class AddStaffMemberIdToOrder < ActiveRecord::Migration
  def change
  	add_column :orders, :staff_member_id, :integer
  end
end
