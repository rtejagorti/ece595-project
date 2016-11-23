class CreateCities < ActiveRecord::Migration[5.0]
  def change
    create_table :cities do |t|
      t.string :city_name, :limit => 45
      t.references :county, foreign_key: true

      t.timestamps
    end
  end
end
