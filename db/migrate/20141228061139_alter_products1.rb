class AlterProducts1 < ActiveRecord::Migration
  def change
  	add_index :products, :category
  end
end
