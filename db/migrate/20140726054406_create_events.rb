class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.references :staff_member, null: false
      t.string :type, null: false
      t.string :title
      t.datetime :start
      t.datetime :end
      t.string :color
      t.boolean :allDay
      

      t.timestamps
    end
    add_index :events, :staff_member_id
    add_index :events, [ :type, :staff_member_id ], unique: true
    add_foreign_key :events, :staff_members
  end
end
