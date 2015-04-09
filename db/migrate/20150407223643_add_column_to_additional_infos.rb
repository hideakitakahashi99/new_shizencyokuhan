class AddColumnToAdditionalInfos < ActiveRecord::Migration
  def change

	add_column :additional_infos, :explanation, :text

  end
end
