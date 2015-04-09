class AddColomnAddresses < ActiveRecord::Migration
  def change
  	def up

  	end
  	def down
  		remove_column :addresses, :type, :string
  		remove_column :addresses, :type, :string
  	end

  end
end
