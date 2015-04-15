class AddAddressIdToLineItems < ActiveRecord::Migration
  def change
  	add_column :line_items, :address_id, :integer
  end
end
