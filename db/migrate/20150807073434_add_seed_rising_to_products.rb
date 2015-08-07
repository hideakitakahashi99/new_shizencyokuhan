class AddSeedRisingToProducts < ActiveRecord::Migration
  def change
    add_column :products, :seed_rising, :boolean, default: false, null: false
  end
end
