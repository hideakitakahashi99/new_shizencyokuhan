class RemoveOpeningFromSchedules < ActiveRecord::Migration[5.0]
  def change
    remove_column :schedules, :opening, :string
  end
end
