class CreateMissions < ActiveRecord::Migration[7.0]
  def change
    create_table :missions do |t|
      t.references :listing, null: false, foreign_key: true
      t.string :name
      t.timestamps
    end
  end
end
