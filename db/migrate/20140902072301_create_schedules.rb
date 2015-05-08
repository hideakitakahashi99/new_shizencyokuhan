class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
  		
    	t.string :harvest
    	t.string :opening
      t.integer :staff_member_id
      t.date :harvest_date
      t.datetime :opening_date
      t.datetime :closing_date
      t.boolean :allDay
      t.string :event_url


      t.timestamps
    end
    add_index :schedules,[:staff_member_id, :created_at]
    add_foreign_key :schedules, :staff_members
  end
end
