class CreateStaffMembers < ActiveRecord::Migration
  def change
    create_table :staff_members do |t|
     t.string :farm_name
     t.string :email, null: false           #メールアドレス
     t.string :email_for_index, null: false
     t.string :family_name
     t.string :given_name
     t.string :family_name_kana
     t.string :given_name_kana
     t.string :hashed_password
     t.date :start_date
     t.date :end_date
     t.boolean :suspended, default: false


      t.timestamps
    end

    add_index :staff_members, :email_for_index, unique: true
    add_index :staff_members, [ :family_name_kana, :given_name_kana ]
  end
end
