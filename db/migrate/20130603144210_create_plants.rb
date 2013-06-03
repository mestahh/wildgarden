class CreatePlants < ActiveRecord::Migration
  def change
    create_table :plants do |t|
      t.string :name
      t.string :latin_name
      t.string :description

      t.timestamps
    end
  end
end
