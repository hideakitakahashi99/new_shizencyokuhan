class AddFarmimgToStaffMembers < ActiveRecord::Migration
  def change
    add_column :staff_members, :farmimg1, :string
    add_column :staff_members, :farmimg2, :string
    add_column :staff_members, :framimg3, :string
  end
end
