class RemoveNameFromMission < ActiveRecord::Migration[7.0]
  def change
    remove_column :missions, :name
  end
end
