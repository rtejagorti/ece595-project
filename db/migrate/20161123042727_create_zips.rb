class CreateZips < ActiveRecord::Migration[5.0]
  def change
    create_table :zips do |t|
      t.string :zip_code, :limit => 45
      t.references :precinct, foreign_key: true

      t.timestamps
    end
  end
end
