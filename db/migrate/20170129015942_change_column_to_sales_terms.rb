class ChangeColumnToSalesTerms < ActiveRecord::Migration
    def up
        change_column :sales_terms, :delivery_fee, :integer, default: 0
    end
    
    def down
        change_column :sales_terms, :delivery_fee, :integer
    end

end
