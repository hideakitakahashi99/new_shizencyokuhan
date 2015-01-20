class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.float :latitude
      t.float :longitude
      t.string :address
      t.string :description
      t.timestamps
    end
  end
end
