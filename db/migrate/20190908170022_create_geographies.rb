class CreateGeographies < ActiveRecord::Migration[5.2]
  def change
    create_table :geographies do |t|
      t.string :latitude
      t.string :longitude

      t.timestamps
    end
  end
end
