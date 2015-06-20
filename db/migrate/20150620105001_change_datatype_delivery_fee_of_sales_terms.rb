class ChangeDatatypeDeliveryFeeOfSalesTerms < ActiveRecord::Migration
  def change
  	change_column :sales_terms, :delivery_fee, :integer
  end
end
