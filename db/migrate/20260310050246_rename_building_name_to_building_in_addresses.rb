class RenameBuildingNameToBuildingInAddresses < ActiveRecord::Migration[7.1]
  def change
    rename_column :addresses, :building_name, :building
  end
end
