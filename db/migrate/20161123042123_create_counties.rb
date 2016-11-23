class CreateCounties < ActiveRecord::Migration[5.0]
  def change
    create_table :counties do |t|
      t.string :county_name, :limit => 45
      t.references :state, foreign_key: true

      t.timestamps
    end
  end
end
