class CreateSalesTerms < ActiveRecord::Migration
  def change
    create_table :sales_terms do |t|

    	t.references :staff_member
      t.string :type
    	t.text :delivery_fee
    	t.text :legal_info
    	t.text :return_policy

      t.timestamps
    end

    add_index :sales_terms, :staff_member_id
    add_index :sales_terms, [ :type, :staff_member_id ], unique: true
    add_foreign_key :sales_terms, :staff_members
  end
end
