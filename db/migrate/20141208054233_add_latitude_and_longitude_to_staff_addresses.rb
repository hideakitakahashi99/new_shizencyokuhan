class AddLatitudeAndLongitudeToStaffAddresses < ActiveRecord::Migration
  def change
    add_column :staff_addresses, :latitude, :float
    add_column :staff_addresses, :longitude, :float
  end
end
