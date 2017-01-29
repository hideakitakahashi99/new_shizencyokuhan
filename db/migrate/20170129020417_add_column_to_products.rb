class AddColumnToProducts < ActiveRecord::Migration
    def change
        add_column :products, :unit, :string
    end
end
