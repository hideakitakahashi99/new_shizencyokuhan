class AddStaffMemberIdToCart < ActiveRecord::Migration
  def change
    add_column :carts, :staff_member_id, :integer
  end
end
