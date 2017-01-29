class AddImageToPgs < ActiveRecord::Migration
  def change
      add_column :pgs, :image, :string
  end
end
