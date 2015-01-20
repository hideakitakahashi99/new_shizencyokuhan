class CreateMicroposts < ActiveRecord::Migration
  def change
    create_table :microposts do |t|
      t.string :content
      t.integer :staff_member_id

      t.timestamps
    end
    add_index :microposts, [ :staff_member_id, :created_at]
  end
end
