class CreateMapus < ActiveRecord::Migration
  def change
    create_table :mapus do |t|
      t.float :longitude
      t.float :latitude
      t.string :address
      t.text :description
      t.string :title

      t.timestamps
    end
  end
end
