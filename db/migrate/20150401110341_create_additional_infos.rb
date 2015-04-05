class CreateAdditionalInfos < ActiveRecord::Migration
  def change
    create_table :additional_infos do |t|

    	t.references :staff_member
      t.string :type
    	t.string :farm_condition
    	t.string :farm_condition_year
    	t.string :masterpiece

      t.timestamps
    end

    add_index :additional_infos, :staff_member_id
    add_index :additional_infos, [ :type, :staff_member_id ], unique: true
    add_foreign_key :additional_infos, :staff_members
  end
end
