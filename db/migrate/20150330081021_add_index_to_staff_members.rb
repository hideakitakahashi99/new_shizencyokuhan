class AddIndexToStaffMembers < ActiveRecord::Migration
  def change

  	remove_index :staff_members, [ :family_name_kana, :given_name_kana ]
  	
  end
end
