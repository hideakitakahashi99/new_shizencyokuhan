class AddBlogToSchedules < ActiveRecord::Migration[5.0]
  def change
    add_column :schedules, :title, :text
    add_column :schedules, :blog, :text, :limit => 4294967295
  end
end
