class AddImageToSchedules < ActiveRecord::Migration
  def change
  	   add_column :schedules, :image1, :string
  	   add_column :schedules, :image2, :string
  	   add_column :schedules, :image3, :string
  end
end
